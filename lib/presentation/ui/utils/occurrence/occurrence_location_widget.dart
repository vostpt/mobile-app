import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:vost/constants.dart';
import 'package:vost/keys.dart';
import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/assets/text_styles.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'occurrence_widget_background.dart';

class OccurrenceLocationWidget extends StatelessWidget {
  final DateTime _lastUpdated;
  final String _locationName;
  final LatLng _location;
  final String _occurrence;
  final MapController _mapController = MapController();

  OccurrenceLocationWidget(
      this._lastUpdated, this._locationName, this._location, this._occurrence);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final iconSize = size.width / 10;
    return OccurrenceWidgetBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(
                'assets/images/vost_logo_grey.png',
                width: iconSize,
                height: iconSize,
              ),
              SizedBox(
                width: marginSmall,
              ),
              Flexible(
                child: Text(
                  _occurrence,
                  style: styleTimeWidgetText(),
                ),
              )
            ],
          ),
          SizedBox(
            height: marginSmall,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxWidth * .7,
                child: FlutterMap(
                  mapController: _mapController,
                  options: MapOptions(
                    center: _location,
                    zoom: 17.0,
                    interactive: false,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate: MAPBOX_URL_TEMPLATE,
                      additionalOptions: {
                        'accessToken': MAPBOX_ACCESS_TOKEN,
                        'id': 'mapbox.streets',
                      },
                    ),
                    MarkerLayerOptions(markers: [
                      Marker(
                          width: 100,
                          height: 100,
                          point: _location,
                          builder: (context) {
                            return IconButton(
                              icon: Icon(
                                Icons.place,
                                color: Colors.green,
                              ),
                              onPressed: () => print("clicked"),
                            );
                          })
                    ])
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: marginSmall,
          ),
          Text(
            "Local",
            style: styleTimeWidgetText(),
          ),
          Text(
            _locationName,
            style: styleMeans(),
          ),
          SizedBox(
            height: marginMini,
          ),
          Text(
            "Localização",
            style: styleTimeWidgetText(),
          ),
          Text(
            "${_location.latitude}, ${_location.longitude}",
            style: styleMeans(),
          ),
          SizedBox(
            height: marginSmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Text(
                    "Ultima atualização : " +
                        getFormattedDate(this._lastUpdated, FORMAT_DATE_FULL),
                    textAlign: TextAlign.center,
                    style: styleLastUpdated(),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
