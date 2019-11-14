import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:vost/common/event.dart';
import 'package:vost/domain/models/occurrence_model.dart';
import 'package:vost/keys.dart';
import 'package:vost/localization/vost_localizations.dart';
import 'package:vost/presentation/assets/colors.dart';
import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/assets/error_messages.dart';
import 'package:vost/presentation/assets/text_styles.dart';
import 'package:vost/presentation/navigation/navigation.dart';
import 'package:vost/presentation/ui/_base/base_page.dart';
import 'package:vost/presentation/ui/home/home_bloc.dart';
import 'package:vost/presentation/ui/utils/occurrence/occurrence_small_info.dart';
import 'package:vost/presentation/ui/utils/occurrences_list_item.dart';
import 'package:vost/presentation/utils/misc.dart';

import '../utils/occurrence/occurrence_location_widget.dart';
import '../utils/occurrence/occurrence_on_site_help_widget.dart';
import '../utils/occurrence/occurrence_status_widget.dart';
import '../utils/occurrence/occurrence_time_widget.dart';

class HomePage extends BasePage<HomeBloc> {
  HomePage({Key key, this.title, HomeBloc bloc}) : super(key: key, bloc: bloc);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends BaseState<HomePage> {
  @override
  void initState() {
    super.initState();
    // this will help us fetch new data from the server
    widget.bloc.fetchNewDataSink.add(Event());

    // initialize the pages
    _initializePages();
  }

  List<Widget> _pages = [];

  void _initializePages() {
    _pages.add(RecentListWidget(widget.bloc));
    _pages.add(MapWidget(widget.bloc));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: StreamBuilder<int>(
            initialData: widget.bloc.currentPageSubject.value,
            stream: widget.bloc.currentPageStream,
            builder: (context, snapshot) {
              return _pages[snapshot.data];
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: StreamBuilder<int>(
          initialData: widget.bloc.currentPageSubject.value,
          stream: widget.bloc.currentPageStream,
          builder: (context, snapshot) {
            return FloatingActionButton(
              onPressed: _onToggleViewTap,
              child: Icon(
                  snapshot.data == HomeBloc.listIndex ? Icons.list : Icons.map),
              elevation: 2.0,
              backgroundColor: colorPrimary,
              foregroundColor: Colors.white,
            );
          }),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            StreamBuilder<int>(
                initialData: widget.bloc.currentTypeOfDataSubject.value,
                stream: widget.bloc.currentTypeOfDataStream,
                builder: (context, snapshot) {
                  return Container(
                    margin: EdgeInsets.only(right: marginSmall),
                    child: InkWell(
                      onTap: _onToggleTypeTap,
                      child: SizedBox(
                        // we find the biggest possible string and give it a margin
                        width: _findBiggestTextWidth(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              padding: EdgeInsets.only(
                                  left: marginSmall,
                                  right: marginSmall,
                                  top: marginSmall),
                              icon: Icon(snapshot.data == HomeBloc.recentsIndex
                                  ? Icons.list
                                  : Icons.star),
                              onPressed: null,
                              // since the onClick is handled by another widget, this
                              // button is disabled
                              disabledColor: Theme.of(context).primaryColor,
                            ),
                            Text(
                              snapshot.data == HomeBloc.recentsIndex
                                  ? VostLocalizations.of(context)
                                      .textRecent
                                      .toUpperCase()
                                  : VostLocalizations.of(context)
                                      .textFollowing
                                      .toUpperCase(),
                              style: styleBottomBarText(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            PopupMenuButton<String>(
              icon: Icon(Icons.more_vert),
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return [
                  VostLocalizations.of(context).textAbout,
                  VostLocalizations.of(context).textReportProblem
                ].map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            )
          ],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == VostLocalizations.of(context).textAbout) _onAboutTap();
    if (choice == VostLocalizations.of(context).textReportProblem) {
      _onReportTap();
    }
  }

  /// Finds the biggest text size in the bottom bar button so that the button is
  /// always centered
  double _findBiggestTextWidth() {
    return max(
      findTextWidth(VostLocalizations.of(context).textFollowing.toUpperCase(),
          styleBottomBarText()),
      findTextWidth(VostLocalizations.of(context).textRecent.toUpperCase(),
          styleBottomBarText()),
    );
  }

  @override
  String getMessage(String error) {
    if (error == genericErrorMessage) {
      return "Ocorreu um erro";
    }
    return "";
  }

  /// Callback to toggle between Map and List view
  void _onToggleViewTap() {
    widget.bloc.changePageSink.add(Event());
  }

  /// Callback to toggle between Map and List view
  void _onToggleTypeTap() {
    widget.bloc.changeTypeOfDataSink.add(Event());
  }

  /// Callback to navigate to About screen
  void _onAboutTap() {
    navigateToAboutScreen(context);
  }

  /// Callback to navigate to Report a Problem screen
  void _onReportTap() {
    navigateToReportAProblem(context);
  }
}

class RecentListWidget extends StatefulWidget {
  final HomeBloc bloc;

  RecentListWidget(this.bloc);

  @override
  _RecentListWidgetState createState() => _RecentListWidgetState();
}

class _RecentListWidgetState extends State<RecentListWidget> {
  @override
  void initState() {
    super.initState();
    widget.bloc.refreshErrorStream
        .listen((_) => _refreshController.refreshFailed());
  }

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<OccurrenceModel>>(
        stream: widget.bloc.occurrencesStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: Text("A carregar"));
          }

          _refreshController.refreshCompleted();
          if (snapshot.hasData) {
            return Container(
                color: Colors.white,
                child: SmartRefresher(
                  controller: _refreshController,
                  header: WaterDropMaterialHeader(
                    backgroundColor: Theme.of(context).accentColor,
                  ),
                  onRefresh: _onRefresh,
                  enablePullDown: true,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      indent: 50.0,
                      thickness: 2.0,
                    ),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () async {
                          //await navigateToDetails(context, snapshot.data[index].occurrence);
                          //widget.bloc.verifyNewFavoritesSink.add(Event());
                        },
                        child: OccurrencesListItemWidget(
                            occurrence: snapshot.data[index]),
                      );
                    },
                  ),
                ));
          }
          return Container(
            child: Center(
              child: Image.asset('assets/images/vost_logo_white.png'),
            ),
          );
        });
  }

  void _onRefresh() => widget.bloc.fetchNewDataSink.add(Event());

  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }
}

/*
 * Map Widget
 *
 * In order to use the map widget, a `keys.dart` file must be created at the root
 * of the project with the following constants:
 *
 * `MAPBOX_ACCESS_TOKEN` - the token for mapbox
 * `MAPBOX_URL_TEMPLATE` the template for mapbox, this can have the default value of
 *      `https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}`
 *
 * In order to have a new key, go to https://www.mapbox.com/ and create a free account
 * and a project for this open-source project
 */
class MapWidget extends StatefulWidget {
  final HomeBloc bloc;

  MapWidget(this.bloc);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final MapController mapController = MapController();

  final LatLng _center = LatLng(39.806251, -8.088591);

  final List<Marker> _markers = List<Marker>();

  Widget _loadingWidget = Center(
    child: Container(
      color: Colors.white70,
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(marginSmall),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircularProgressIndicator(
              strokeWidth: 4.0,
              valueColor: AlwaysStoppedAnimation<Color>(colorPrimary),
            ),
            Text("A carregar pontos")
          ],
        ),
      ),
    ),
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var permission = await LocationPermissions().checkPermissionStatus();
      if (permission != PermissionStatus.granted) {
        showDialog<void>(
          context: context,
          barrierDismissible: true, // user must tap button!
          builder: (BuildContext context) {
            return AlertDialog(
              content: _PermissionWidget(),
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        StreamBuilder<List<OccurrenceModel>>(
            stream: widget.bloc.occurrencesStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                _markers.clear();
                _markers.addAll(snapshot.data
                    .map((occurrence) => _createMarker(occurrence))
                    .toList());
                _loadingWidget = Container();
              }

              return Stack(
                children: <Widget>[
                  FlutterMap(
                    mapController: mapController,
                    options: MapOptions(
                      center: _center,
                      zoom: 7.0,
                      minZoom: 1.0,
                      maxZoom: 20.0,
                    ),
                    layers: [
                      TileLayerOptions(
                        urlTemplate: MAPBOX_URL_TEMPLATE,
                        additionalOptions: {
                          'accessToken': MAPBOX_ACCESS_TOKEN,
                          'id': 'mapbox.streets',
                        },
                      ),
                      MarkerLayerOptions(markers: _markers)
                    ],
                  ),
                  _loadingWidget,
                  getOccurrenceTypeWidget(),
                  getOccurrenceFloatingActionButton(),
                  removeSelectedOccurrenceFloatingActionButton(),
                ],
              );
            }),
      ],
    );
  }

  getOccurrenceFloatingActionButton() {
    return StreamBuilder<bool>(
        stream: widget.bloc.openOccurrenceStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return StreamBuilder<OccurrenceModel>(
                stream: widget.bloc.selectedOccurrenceStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return GetOccurrenceFloatingActionButton(
                        homebloc: widget.bloc);
                  }
                  return Container();
                });
          }
          return Container();
        });
  }

  removeSelectedOccurrenceFloatingActionButton() {
    return StreamBuilder<OccurrenceModel>(
        stream: widget.bloc.selectedOccurrenceStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return RemoveSelectedOccurrenceFloatingActionButton(
                homebloc: widget.bloc);
          }
          return Container();
        });
  }

  String selectedOccurrenceId = "";

  Marker _createMarker(OccurrenceModel occurrence) {
    return new Marker(
        width: 25,
        height: 25,
        point: occurrence.coordinates,
        builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.place,
              color: selectedOccurrenceId != occurrence.id
                  ? Colors.green
                  : Colors.orange,
            ),
            onPressed: () {
              selectedOccurrenceId = occurrence.id;
              //markerColor = Colors.orange;
              setState(() {});
              widget.bloc.selectedOccurrenceSink.add(occurrence);
            },
          );
        });
  }

  Widget getOccurrenceTypeWidget() {
    return StreamBuilder<OccurrenceModel>(
        stream: widget.bloc.selectedOccurrenceStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return fillOccurrenceTypeWidget(snapshot.data);
          }
          selectedOccurrenceId = "";
          return Container();
        });
  }

  Widget fillOccurrenceTypeWidget(OccurrenceModel selectedOcorrence) {
    return StreamBuilder<bool>(
        stream: widget.bloc.openOccurrenceStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data) {
              widget.bloc.getOccurrenceByIdSink
                  .add(selectedOcorrence.links.self);
              return GetSelectedOccurrenceFullInfo(homebloc: widget.bloc);
            } else {
              return OccurrenceSmallInfoWidget(
                  selectedOcorrence.updatedAt, selectedOcorrence.type.name);
            }
          } else {
            return OccurrenceSmallInfoWidget(
                selectedOcorrence.updatedAt, selectedOcorrence.type.name);
          }
        });
  }
}

class _PermissionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            child: Text(
          "Permissions",
          style: styleIntroTitle(),
        )),
        SizedBox(
          height: size.shortestSide * .40,
          width: size.shortestSide * .40,
          child: InkWell(
            onTap: _requestPermission,
            child: Icon(
              Icons.not_listed_location,
              size: size.shortestSide * .40,
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: marginMega),
            alignment: Alignment(0, 0),
            width: size.shortestSide * .7,
            child: Text(
              "This app needs the GPS location so that it can show where you are in this map, do you want to allow it?",
              textAlign: TextAlign.center,
              style: styleMediumBlackText(),
            )),
        FlatButton(
            padding: EdgeInsets.all(marginMedium),
            onPressed: () {
              _requestPermission();
              Navigator.of(context).pop();
            },
            child: Text(
              "Allow Location".toUpperCase(),
              style: styleAllowAccessTextButton(),
            )),
      ],
    );
  }

  void _requestPermission() async {
    debugPrint("Requesting dem permissions");
    await LocationPermissions().requestPermissions();
  }
}

class RemoveSelectedOccurrenceFloatingActionButton extends StatelessWidget {
  final HomeBloc homebloc;
  RemoveSelectedOccurrenceFloatingActionButton(
      {Key key, @required this.homebloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: 5, left: 5),
        child: FloatingActionButton(
          onPressed: () {
            homebloc.openOccurrenceSink.add(false);
            homebloc.selectedOccurrenceSink.add(null);
          },
          child: Icon(Icons.clear),
          backgroundColor: Colors.orange[300],
        ),
      ),
    );
  }
}

class GetOccurrenceFloatingActionButton extends StatelessWidget {
  final HomeBloc homebloc;
  GetOccurrenceFloatingActionButton({Key key, @required this.homebloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: homebloc.openOccurrenceStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(bottom: 5, right: 5),
                child: FloatingActionButton(
                  onPressed: () {
                    homebloc.openOccurrenceSink.add(!snapshot.data);
                  },
                  child: Icon(snapshot.data
                      ? Icons.arrow_downward
                      : Icons.arrow_upward),
                  backgroundColor: Colors.orange[300],
                ),
              ),
            );
          } else {
            return Container();
          }
        });
  }
}

class GetSelectedOccurrenceFullInfo extends StatelessWidget {
  final HomeBloc homebloc;
  GetSelectedOccurrenceFullInfo({Key key, @required this.homebloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<OccurrenceModel>(
        stream: homebloc.getOccurrenceByIdDataStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 70, left: 10, right: 10),
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    OccurrenceLocationWidget(
                        DateTime.parse(snapshot.data.updatedAt),
                        snapshot.data.parish.name,
                        snapshot.data.coordinates,
                        snapshot.data.type.name),
                    OccurrenceStatusWidget(
                      snapshot.data.status.name,
                      DateTime.parse(snapshot.data.updatedAt),
                    ),
                    OccurrenceOnSiteHelpWidget(
                        DateTime.parse(snapshot.data.onSiteMeans.updatedAt),
                        snapshot.data.onSiteMeans.groundOperativesInvolved,
                        snapshot.data.onSiteMeans.groundAssetsInvolved,
                        snapshot.data.onSiteMeans.aerialAssetsInvolved),
                    OccurrenceTimeWidget(
                      snapshot.data.endedAt == null
                          ? null
                          : DateTime.parse(snapshot.data.startedAt),
                      snapshot.data.endedAt == null
                          ? null
                          : DateTime.parse(snapshot.data.endedAt),
                      DateTime.parse(snapshot.data.updatedAt),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        });
  }
}
