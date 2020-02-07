import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:vost/presentation/navigation/navigation.dart';
import 'package:vost/presentation/ui/_base/base_page.dart';
import 'package:vost/presentation/ui/splash/splash_bloc.dart';

class SplashPage extends BasePage<SplashBloc> {
  SplashPage({SplashBloc bloc, Key key, this.title})
      : super(key: key, bloc: bloc);

  final String title;

  @override
  _MySplashPageState createState() => _MySplashPageState();
}

class _MySplashPageState extends BaseState<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: FlareActor(
          "assets/flare/vost_logo.flr",
          alignment: Alignment.center,
          animation: "Load",
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    timedNavigationTo(routeHome);
  }

  /*
   * After a time it will navigate to the home screen.
   * Since this is just a Splash screen, it shouldn't be shown for a long time.
   */
  void timedNavigationTo(String newPage) {
    /*
    The timer set for 2400 is just enough time to see the whole animation
      this should be modified to better fit the navigation.
     */
    Timer(Duration(milliseconds: 2400), () {
      if (!widget.bloc.hasSeenTutorialSubject.value) {
        Navigator.pushReplacementNamed(context, routeIntro);
      } else {
        Navigator.pushReplacementNamed(context, routeHome);
      }
    });
  }

  @override
  String getMessage(String error) {
    return "";
  }

  @override
  void dispose() {
    super.dispose();
    widget.bloc.dispose();
  }
}
