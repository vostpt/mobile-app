import 'package:flutter/material.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:intl/intl.dart' as intl;
import 'package:vost/presentation/utils/constants.dart' as Constants;


void showErrorSnackbar(String event, ScaffoldState context) {
  if (event != null) {
    context.showSnackBar(new SnackBar(
      content: new Text(event),
    ));
  }
}

double findTextWidth(String text, TextStyle style) {
  final textPainter = TextPainter(textDirection: TextDirection.ltr);
  textPainter.text = TextSpan(text: text, style: style);
  textPainter.layout();
  return textPainter.width;
}

DataResponse getAttributeById(String id, String type, List<DataResponse> listOfData) {
  if (id == null || type == null) {
    return null;
  }
  for (var data in listOfData) {
    if (data.id == id && data.type == type) {
      return data;
    }
  }
  return null;
}

LinkResponse combineLinks(LinkResponse baseLinks, LinkResponse selfLinks) {
  return LinkResponse((b) => b
      ..first = baseLinks?.first
      ..last = baseLinks?.last
      ..next = baseLinks?.next
      ..self = selfLinks?.self
  );
}

String getFormattedDate(DateTime date, String typeOfFormat) {
  String formattedDate = Constants.EMPTY_INPUT_STRING;
  intl.DateFormat formatter;

  if (date != null) {
    switch(typeOfFormat) {
      case Constants.FORMAT_DATE_FULL: {
        formatter = new intl.DateFormat('HH:mm yyyy-MM-dd');
        break;
      }
      case Constants.FORMAT_DATE_DAY: {
        formatter = new intl.DateFormat('yyyy-MM-dd');
        break;
      }
      case Constants.FORMAT_DATE_HOUR: {
        formatter = new intl.DateFormat('HH:mm');
        break;
      }
      default: {

      }
    }

    formattedDate = formatter.format(date);
  }

  return formattedDate;
}