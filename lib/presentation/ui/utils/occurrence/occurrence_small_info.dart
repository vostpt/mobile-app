import 'package:flutter/material.dart';
import 'package:vost/constants.dart' as Constants;
//import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/assets/text_styles.dart';
import 'package:vost/presentation/utils/misc.dart';

//import 'occurrence_widget_background.dart';

class OccurrenceSmallInfoWidget extends StatelessWidget {
  final String _updatedAt;
  final String _typeName;

  OccurrenceSmallInfoWidget(this._updatedAt, this._typeName);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 70, left: 10, right: 10),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 35),
              color: Colors.white,
              child: ListTile(
                title: Text(
                  getFormattedDate(
                      DateTime.parse(_updatedAt), Constants.FORMAT_DATE_DAY),
                  style: styleLastUpdated(),
                ),
                subtitle: Text(
                  _typeName,
                  style: styleTimeWidgetText(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
