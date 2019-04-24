import 'package:flutter/material.dart';

void showErrorSnackbar(String event, ScaffoldState context) {
  if (event != null) {
    context.showSnackBar(new SnackBar(
      content: new Text(event),
    ));
  }
}