import 'package:flutter/material.dart';
import 'package:vost/constants.dart' as Constants;
import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/assets/text_styles.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'occurrence_widget_background.dart';

class OccurrenceTimeWidget extends StatelessWidget {
  final DateTime _startTime;
  final DateTime _endTime;
  final DateTime _lastUpdated;

  const OccurrenceTimeWidget(this._startTime, this._endTime, this._lastUpdated);

  @override
  Widget build(BuildContext context) {
    return OccurrenceWidgetBackground(
        child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Text(
                    "Início",
                    style: styleMeans(),
                  ),
                ),
                Container(
                  child: Text(
                    getFormattedDate(
                        this._startTime, Constants.FORMAT_DATE_HOUR),
                    style: styleTimeWidgetText(),
                  ),
                ),
                Container(
                  child: Text(
                    getFormattedDate(
                        this._startTime, Constants.FORMAT_DATE_DAY),
                    style: styleTimeWidgetText(),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Text(
                    "Fim",
                    style: styleMeans(),
                  ),
                ),
                Container(
                  child: Text(
                    getFormattedDate(this._endTime, Constants.FORMAT_DATE_HOUR),
                    style: styleTimeWidgetText(),
                  ),
                ),
                Container(
                  child: Text(
                    getFormattedDate(this._endTime, Constants.FORMAT_DATE_DAY),
                    style: styleTimeWidgetText(),
                  ),
                ),
              ],
            ),
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
      ],
    ));
  }
}
