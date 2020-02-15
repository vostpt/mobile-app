import 'package:flutter/material.dart';
import 'package:vost/constants.dart' as Constants;
import 'package:vost/presentation/assets/colors.dart';
import 'package:vost/presentation/assets/text_styles.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'occurrence_widget_background.dart';

class OccurrenceStatusWidget extends StatelessWidget {
  final String _status;
  final DateTime _lastUpdated;

  OccurrenceStatusWidget(this._status, this._lastUpdated);

  @override
  Widget build(BuildContext context) {
    return OccurrenceWidgetBackground(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Estado", style: styleTimeWidgetText()),
        Container(
          margin: EdgeInsets.only(top: 9.0),
          alignment: Alignment.center,
          child: Text(
            _status,
            style: styleMeansNumber(),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 9.0),
          alignment: Alignment.center,
          child: Text(
            "Última atualização: " +
                getFormattedDate(this._lastUpdated, Constants.FORMAT_DATE_FULL),
            style: TextStyle(
              color: gray_info,
            ),
          ),
        ),
      ],
    ));
  }
}
