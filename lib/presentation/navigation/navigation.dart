import 'package:flutter/material.dart';

/// Navigation Class
///
/// Here we have declared the routes and the navigation functions

const routeHome = "home";
const routeSplash = "splash";
const routeAbout = "about";
const routeProblem = "home/problemReport";
const routeIntro = "intro";


Future<void> navigateToHomeAndRemoveStack(BuildContext context) {
  return Navigator.of(context).pushNamedAndRemoveUntil(routeHome, (Route<dynamic> route) => false);
}