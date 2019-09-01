import 'package:flutter/material.dart';

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
