import 'package:flutter/material.dart';
import 'package:vost/constants.dart' as Constants;
import 'package:vost/presentation/assets/dimensions.dart';
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
        SizedBox(
          height: marginSmall,
        ),
        Center(
          child: Text(_status, style: styleMeansNumber()),
        ),
        SizedBox(
          height: marginSmall,
        ),
        Center(
          child: Text(
              "Última atualização: " +
                  getFormattedDate(
                      this._lastUpdated, Constants.FORMAT_DATE_FULL),
              style: TextStyle(
                color: Color(0x84000000),
              )),
        ),
      ],
    ));
  }
}
