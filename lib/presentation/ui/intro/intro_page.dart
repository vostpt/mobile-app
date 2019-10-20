import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vost/presentation/assets/colors.dart';
import 'package:vost/presentation/ui/utils/intro_slider_content_widget.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key key})
      : super(key: key);

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

  var _numberOfPages = 3;

  var _isScrollingSubject = BehaviorSubject<bool>.seeded(false);

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
                  color: colorLightBlue,
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
                      bottom: size.height / 6,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        padding:
                            EdgeInsets.only(bottom: size.shortestSide / 200),
                        alignment: Alignment(0, 0),
                        child: PageIndicator(
                          layout: PageIndicatorLayout.SLIDE,
                          size: size.shortestSide / 25,
                          controller: _pageController,
                          space: 20.0,
                          activeColor: Theme.of(context).primaryColor,
                          color: Colors.grey,
                          count: _numberOfPages,
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
    //
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
}

class IntroWelcomePage extends StatelessWidget {
  final Function buttonCallback;

  IntroWelcomePage({this.buttonCallback, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: new IntroSliderContentWidget(
          title: "Title 1",
          subtitle: "Subtitle 1",
          imageAsset: "assets/vost_logo_white",
          buttonName: "Button 1",
          buttonCallback: buttonCallback,
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
          title: "Title 1",
          subtitle: "Subtitle 1",
          imageAsset: "assets/vost_logo_white",
          buttonName: "Button 1",
          buttonCallback: buttonCallback,
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
    return Scaffold(
      body: SafeArea(
        child: new IntroSliderContentWidget(
          title: "Title 1",
          subtitle: "Subtitle 1",
          imageAsset: "assets/vost_logo_white",
          buttonName: "Button 1",
          buttonCallback: buttonCallback,
        ),
      ),
    );
  }
}
