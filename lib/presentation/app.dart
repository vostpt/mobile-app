import 'package:flutter/material.dart';
import 'package:vost/presentation/ui/home/home_page.dart';

class VostApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Vost App'),
    );
  }
}