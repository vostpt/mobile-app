import 'package:flutter/material.dart';
import 'package:vost/presentation/assets/dimensions.dart';

class OccurrenceWidgetBackground extends StatelessWidget {
  final Widget child;

  OccurrenceWidgetBackground({this.child, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(marginSmall),
        child: child,
      ),
    );
  }
}
