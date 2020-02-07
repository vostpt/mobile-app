import 'package:flutter/material.dart';
import 'package:vost/common/event.dart';
import 'package:vost/domain/models/occurrence_model.dart';
import 'package:vost/presentation/assets/colors.dart';
import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/ui/_base/base_page.dart';
import 'package:vost/presentation/ui/utils/occurrence/occurrence_location_widget.dart';
import 'package:vost/presentation/ui/utils/occurrence/occurrence_on_site_help_widget.dart';
import 'package:vost/presentation/ui/utils/occurrence/occurrence_status_widget.dart';
import 'package:vost/presentation/ui/utils/occurrence/occurrence_time_widget.dart';
import 'package:vost/presentation/ui/utils/occurrence/occurrence_widget_background.dart';

import 'details_bloc.dart';

class DetailsPage extends BasePage<DetailsBloc> {
  final OccurrenceModel occurrence;

  DetailsPage({this.occurrence, DetailsBloc bloc, Key key})
      : super(key: key, bloc: bloc);

  @override
  State<StatefulWidget> createState() => _DetailsState();
}

class _DetailsState extends BaseState<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.occurrence.name ?? widget.occurrence.type.name),
        actions: <Widget>[
          StreamBuilder<FavoriteIconState>(
            stream: widget.bloc.isOccurrenceFavoriteStream,
            builder: (context, snapshot) {
              if (!snapshot.hasData ||
                  snapshot.data == FavoriteIconState.LOADING) {
                return Container(
                    padding: EdgeInsets.all(marginSmall),
                    child: AspectRatio(
                        aspectRatio: 1.0, child: CircularProgressIndicator()));
              }
              bool isFavorite = snapshot.data == FavoriteIconState.FAVORITE;
              return IconButton(
                onPressed: () =>
                    widget.bloc.changeFavoriteStateSink.add(Event()),
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite
                      ? Theme.of(context).accentColor
                      : colorTextGrey,
                ),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(marginScreen),
        child: StreamBuilder<OccurrenceModel>(
          initialData: widget.occurrence,
          stream: widget.bloc.getOccurrenceByIdDataStream,
          builder: (context, snapshot) {
            return ListView(
              children: _buildOccurrenceWidget(snapshot.data),
            );
          },
        ),
      ),
    );
  }

  @override
  String getMessage(String error) {
    return "An error has occurred";
  }

  List<Widget> _buildOccurrenceWidget(OccurrenceModel model) {
    List<Widget> widgets = List<Widget>();

    widgets.add(OccurrenceStatusWidget(
      model.status.name,
      DateTime.parse(model.updatedAt),
    ));

    widgets.add(OccurrenceTimeWidget(
      model.endedAt == null ? null : DateTime.parse(model.startedAt),
      model.endedAt == null ? null : DateTime.parse(model.endedAt),
      DateTime.parse(model.updatedAt),
    ));

    if (model.coordinates != null) {
      widgets.add(OccurrenceLocationWidget(DateTime.parse(model.updatedAt),
          model.parish.name, model.coordinates, model.type.name));
    }

    if (model.onSiteMeans != null) {
      widgets.add(OccurrenceOnSiteHelpWidget(
          DateTime.parse(model.onSiteMeans.updatedAt),
          model.onSiteMeans.groundOperativesInvolved,
          model.onSiteMeans.groundAssetsInvolved,
          model.onSiteMeans.aerialAssetsInvolved));
    }

    // if we are still waiting for new data, then show a loading widget
    if (!model.isDetailed) {
      widgets.add(OccurrenceWidgetBackground(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ));
    }

    return widgets;
  }

  @override
  void dispose() {
    super.dispose();
    widget.bloc.dispose();
  }
}
