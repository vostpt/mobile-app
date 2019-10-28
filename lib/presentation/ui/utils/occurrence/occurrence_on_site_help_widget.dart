import 'package:flutter/material.dart';
import 'package:vost/constants.dart' as Constants;
import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/assets/text_styles.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'occurrence_widget_background.dart';

class OccurrenceOnSiteHelpWidget extends StatelessWidget {
  final DateTime _lastUpdated;
  final int _humanMeans;
  final int _landMeans;
  final int _aerialMeans;

  const OccurrenceOnSiteHelpWidget(
      this._lastUpdated, this._humanMeans, this._landMeans, this._aerialMeans);

  String getCorrectMeansFormat(int means) {
    return means != null ? means.toString() : Constants.EMPTY_INPUT_STRING;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var iconSize = size.width / 10;
    return OccurrenceWidgetBackground(
        child: Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/images/vost_logo_grey.png',
                    width: iconSize,
                    height:  iconSize,
                  ),
                  Container(
                      child: Text(
                    getCorrectMeansFormat(this._humanMeans),
                    style: styleMeansNumber(),
                  )),
                ],
              ),
            ),
            Container(
              child: Text(
                "Humanos".toUpperCase(),
                style: styleMeans(),
              ),
            ),
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/images/vost_logo_grey.png',
                    width: iconSize,
                    height:  iconSize,
                  ),
                  Container(
                      child: Text(
                    getCorrectMeansFormat(this._landMeans),
                    style: styleMeansNumber(),
                  )),
                ],
              ),
            ),
            Container(
              child: Text(
                "Terrestes".toUpperCase(),
                style: styleMeans(),
              ),
            ),
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/images/vost_logo_grey.png',
                    width: iconSize,
                    height:  iconSize,
                  ),
                  Container(
                      child: Text(
                    getCorrectMeansFormat(this._aerialMeans),
                    style: styleMeansNumber(),
                  )),
                ],
              ),
            ),
            Container(
              child: Text(
                "Aereos".toUpperCase(),
                style: styleMeans(),
              ),
            ),
          ])
        ],
      ),
          SizedBox(
            height: marginSmall,
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text(
              "Ultima atualização : " +
                  getFormattedDate(
                      this._lastUpdated, Constants.FORMAT_DATE_FULL),
              textAlign: TextAlign.center,
              style: styleLastUpdated(),
            ),
          ),
        ],
      )
    ]));
  }
}
