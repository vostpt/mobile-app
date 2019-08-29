import 'package:flutter/material.dart';
import 'package:vost/di/dependency_provider.dart';
import 'package:vost/presentation/app.dart';

void main() async {
  var dependencyProvider = DependencyProvider(child : VostApp());
  await dependencyProvider.initialize();
  runApp(dependencyProvider);
}