import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:notification_permissions/notification_permissions.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vost/common/event.dart';
import 'package:vost/presentation/assets/colors.dart';
import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/assets/text_styles.dart';
import 'package:vost/presentation/navigation/navigation.dart';
import 'package:vost/presentation/ui/_base/base_page.dart';
import 'package:vost/presentation/ui/utils/intro_slider_content_widget.dart';

import 'intro_bloc.dart';

class IntroPage extends BasePage<IntroBloc> {
  IntroPage({IntroBloc bloc, Key key})
      : super(key: key, bloc: bloc);

  @override
  _IntroState createState() {
    return _IntroState();
  }
}

class _IntroState extends State<IntroPage> {
  PageController _pageController;
  GlobalKey<ScaffoldState> key;

  _IntroState();

  int sliderAnimationSpeed = 300;

  int _numberOfPages = 3;

  BehaviorSubject<bool> _isScrollingSubject = BehaviorSubject<bool>.seeded(false);

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(Duration(seconds: 1)).then(
        (_) => _pageController.position.isScrollingNotifier.addListener(() {
              debugPrint(
                  "is Scrolling: ${_pageController.position.isScrollingNotifier.value}");
              _isScrollingSubject
                  .add(_pageController.position.isScrollingNotifier.value);
            }));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var widget = WillPopScope(
      onWillPop: () {
        return Future.value(_previousSlide());
      },
      child: Scaffold(
        key: key,
        body: StreamBuilder<bool>(
            stream: _isScrollingSubject,
            builder: (context, snapshot) {
              /// The ignorePointer is used so that we can stop the user to tap multiple times on the screen
              /// which would stop the transition animation
              return IgnorePointer(
                ignoring: snapshot.data ?? false,
                child: Container(
                  child: Stack(children: <Widget>[
                    PageView(controller: _pageController, children: <Widget>[
                      IntroWelcomePage(
                        buttonCallback: _nextSlide,
                      ),
                      IntroVerifyPage(
                        buttonCallback: _nextSlide,
                      ),
                      IntroCodePage(
                        buttonCallback: _navigateToHome,
                      )
                    ]),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: SafeArea(
                        child: Container(
                          margin: EdgeInsets.all(marginMega),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: marginMedium),
                                child: PageIndicator(
                                  layout: PageIndicatorLayout.SLIDE,
                                  size: 10,
                                  space: 20,
                                  controller: _pageController,
                                  activeColor: Theme.of(context).primaryColor,
                                  color: Colors.grey,
                                  count: _numberOfPages,
                                ),
                              ),
                              FlatButton(
                                child: Text("Seguinte".toUpperCase(), style: styleFlatButton(),),
                                textColor: Theme.of(context).primaryColor,
                                onPressed: () {
                                  if (_pageController.page < _numberOfPages - 1) {
                                    _nextSlide();
                                  } else {
                                    _navigateToHome();
                                  }
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              );
            }),
      ),
    );

    return widget;
  }

  void _navigateToHome() {
    widget.bloc.navigateSink.add(Event());
    navigateToHomeAndRemoveStack(context);
  }

  void _nextSlide() {
    // if we are not scrolling, then scroll us to the next page
    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
    if (!_pageController.position.activity.isScrolling) {
      _pageController.nextPage(
          duration: Duration(milliseconds: sliderAnimationSpeed),
          curve: Curves.linear);
    } else {
      //jump to it
      _pageController.nextPage(
          duration: Duration(milliseconds: 0), curve: Curves.linear);
    }
  }

  bool _previousSlide() {
    // if we are not scrolling, then scroll us to the next page
    if (!_pageController.position.isScrollingNotifier.value) {
      _pageController.previousPage(
          duration: Duration(milliseconds: sliderAnimationSpeed),
          curve: Curves.linear);
    } else {
      //jump to it
      _pageController.previousPage(
          duration: Duration(milliseconds: 0), curve: Curves.linear);
    }
    return _pageController.page == 0;
  }

  @override
  void dispose() {
    super.dispose();
    widget.bloc.dispose();
  }


}

class IntroWelcomePage extends StatelessWidget {
  final Function buttonCallback;

  IntroWelcomePage({this.buttonCallback, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: new IntroSliderContentWidget(
          title: "Quem é a VOST Portugal?",
          subtitle: "A VOST Portugal - Associação de Voluntários Digitais em Situações de Emergência, é um grupo de cidadãos que actuam nas redes sociais com o objectivo de informar as populações com informações fidedignas.",
          imageAsset: "assets/images/vost_logo.png",
        ),
      ),
    );
  }
}

class IntroVerifyPage extends StatelessWidget {
  final Function buttonCallback;

  IntroVerifyPage({this.buttonCallback, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: new IntroSliderContentWidget(
          title: "O que é esta aplicação?",
          subtitle: "Esta aplicação pretende que tenhas o máximo de informação possível, em tempo real, das áreas onde te encontras, no que diz respeito a emergências.\nEsta app usa dados de entidades oficiais como a ANEPC, IPMA, APA, DGAV, ICNF, bem como informação validada pela equipa da VOST Portugal. ",
          imageAsset: "assets/images/vost_logo.png",
        ),
      ),
    );
  }
}

class IntroCodePage extends StatelessWidget {
  final Function buttonCallback;

  IntroCodePage({this.buttonCallback, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title, content;
    if (Platform.isIOS) {
      title = "Permitir Notificações";
      content = "Na app VOST podes subscrever a notificações mediante o tipo e a localização, para que estejas sempre informado das últimas ocorrências.\nPara isso precisamos da tua permissão para te enviarmos notificações.";
    } else {
      title = "Notificações";
      content = "Na app VOST podes subscrever a notificações mediante o tipo e a localização, para que estejas sempre informado das últimas ocorrências.";
    }
    return Scaffold(
      body: SafeArea(
        child: new IntroSliderContentWidget(
          title: title,
          subtitle: content,
          imageAsset: "assets/images/vost_logo.png",
          contentWidget: Visibility(
            visible: Platform.isIOS,
            child: Container(
              child: FlatButton(
                onPressed: () async {
                  await NotificationPermissions.requestNotificationPermissions(iosSettings: const NotificationSettingsIos(sound: true, badge: true, alert: true));
                  navigateToHomeAndRemoveStack(context);
                },
                color: Theme.of(context).primaryColor,
                child: Text(
                  "Permitir",
                  style: styleButtonText(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
