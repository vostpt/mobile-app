import 'package:flutter/material.dart';
import 'package:vost/domain/models/occurrence_model.dart';
import 'package:vost/presentation/assets/colors.dart';
import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/assets/text_styles.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'package:vost/constants.dart';

class OccurrencesListItemWidget extends StatelessWidget {
  final OccurrenceModel occurrence;

  OccurrencesListItemWidget({this.occurrence});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(marginSmall),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(occurrence.type.name,
                    style: styleOccurrenceTitle()),
              ),
              Icon(
                Icons.star,
                color: colorStarred,
                size: iconSize,
              )
            ],
          ),
          Text(occurrence.parish.name, style: styleOccurrencesSubText()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(occurrence.status.name, style: styleOccurrencesSubText()),
              Text(getFormattedDate(DateTime.parse(occurrence.updatedAt), FORMAT_DATE_FULL),
                  style: styleOccurrencesSubText())
            ],
          ),
        ],
      ),
    );
  }
}
