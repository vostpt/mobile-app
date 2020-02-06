import 'package:flutter/material.dart';
import 'package:vost/constants.dart' as Constants;
import 'package:vost/presentation/assets/text_styles.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'occurrence_widget_background.dart';

class OccurrenceSmallInfoWidget extends StatelessWidget {
  final String _updatedAt;
  final String _typeName;

  OccurrenceSmallInfoWidget(this._updatedAt, this._typeName);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: OccurrenceWidgetBackground(
        child: Container(
          width: double.infinity,
          height: 112,
          padding: EdgeInsets.only(top: 14.6, left: 11),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                getFormattedDate(
                    DateTime.parse(_updatedAt), Constants.FORMAT_DATE_DAY),
                style: styleLastUpdated(),
              ),
              Text(
                _typeName,
                style: styleTimeWidgetText(),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
