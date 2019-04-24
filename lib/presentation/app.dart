import 'package:flutter/material.dart';
import 'package:vost/di/dependency_provider.dart';
import 'package:vost/presentation/navigation/navigation.dart';
import 'package:vost/presentation/ui/home/home_page.dart';

class VostApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: routeHome,
      routes: {
        routeHome: (context) => HomePage(title: 'Vost App', bloc: DependencyProvider.of(context).getHomeBloc(),),
      },
    );
  }
}