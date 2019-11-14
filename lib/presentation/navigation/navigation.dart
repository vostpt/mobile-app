import 'package:flutter/material.dart';
import 'package:vost/domain/models/occurrence_model.dart';

/// Navigation Class
///
/// Here we have declared the routes and the navigation functions


const routeSplash = "splash";
const routeIntro = "intro";
const routeHome = "home";
const routeAbout = "home/about";
const routeProblem = "home/problemReport";
const routeContributors = "about/contributors";
const routeDetails = "details";



Future<void> navigateToHomeAndRemoveStack(BuildContext context) {
  return Navigator.of(context)
      .pushNamedAndRemoveUntil(routeHome, (Route<dynamic> route) => false);
}

Future<void> navigateToContributions(BuildContext context) {
  return Navigator.of(context).pushNamed(routeContributors);
}

Future<void> navigateToAboutScreen(BuildContext context) {
  return Navigator.of(context).pushNamed(routeAbout);
}

Future<void> navigateToReportAProblem(BuildContext context) {
  return Navigator.of(context).pushNamed(routeProblem);
}

Future<void> navigateToDetails(BuildContext context, OccurrenceModel occurrence) {
  print(occurrence.name);
  return Navigator.of(context).pushNamed(routeDetails, arguments: occurrence);
}
