import 'package:flutter/material.dart';
import 'package:vost/constants.dart' as Constants;
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
    final size = MediaQuery.of(context).size;
    final iconSize = size.width / 10;
    return OccurrenceWidgetBackground(
        child: Column(children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
            child: OccurenceOnSiteHelpTypeWidget(
                amount: this._humanMeans,
                type: "Humans",
                image: 'assets/images/fireman.png',
                iconSize: iconSize),
          ),
          Expanded(
            child: OccurenceOnSiteHelpTypeWidget(
              amount: this._landMeans,
              type: "Aereos",
              image: 'assets/images/firetruck.png',
              iconSize: iconSize,
            ),
          ),
          Expanded(
            child: OccurenceOnSiteHelpTypeWidget(
              amount: this._aerialMeans,
              type: "Aereos",
              image: 'assets/images/plane.png',
              iconSize: iconSize,
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Flexible(
            child: Container(
              margin: EdgeInsets.only(top: 9.0),
              child: Text(
                "Ultima atualização : " +
                    getFormattedDate(
                        this._lastUpdated, Constants.FORMAT_DATE_FULL),
                textAlign: TextAlign.center,
                style: styleLastUpdated(),
              ),
            ),
          ),
        ],
      )
    ]));
  }
}

class OccurenceOnSiteHelpTypeWidget extends StatelessWidget {
  final String type;
  final String image;
  final int amount;
  final double iconSize;

  String getCorrectMeansFormat(int means) {
    return means != null ? means.toString() : Constants.EMPTY_INPUT_STRING;
  }

  OccurenceOnSiteHelpTypeWidget(
      {@required this.type,
      @required this.image,
      @required this.amount,
      @required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8.0),
                width: iconSize,
                height: iconSize,
                child: Image.asset(
                  image,
                  width: iconSize,
                  height: iconSize,
                ),
              ),
              Container(
                  child: Text(
                getCorrectMeansFormat(this.amount),
                style: styleMeansNumber(),
              )),
            ],
          ),
          Container(
            child: Text(
              type.toUpperCase(),
              style: styleMeans(),
            ),
          )
        ]);
  }
}
