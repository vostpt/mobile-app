import 'package:flutter/material.dart';
import 'package:vost/presentation/assets/colors.dart';
import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/assets/text_styles.dart';

class IntroSliderContentWidget extends StatelessWidget {
  IntroSliderContentWidget(
      {Key key, this.title, this.subtitle, this.imageAsset, this.buttonName, this.buttonCallback, this.subtitleWidget})
      : super(key: key);

  final String title;
  final String subtitle;
  final String imageAsset;
  final String buttonName;
  final Widget subtitleWidget;
  final Function buttonCallback;

  @override
  Widget build(BuildContext context) {
    final availableWidth = MediaQuery.of(context).size.width - 2 * marginScreen;
    return Container(
      color: colorLightBlue,
      padding: EdgeInsets.all(marginScreen),
      width: double.infinity,
      alignment: Alignment(0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(
              width: availableWidth,
              height: availableWidth,
              child: Image(image: AssetImage(imageAsset))),
          Container(
            margin: EdgeInsets.only(bottom: marginMedium),
            child: Text(
              title,
              style: styleIntroTitle(),
            ),
          ),
          Container(
            width: availableWidth,
            child: subtitleWidget == null ? Text(
              subtitle,
              style: styleIntroSubtitle(),
              textAlign: TextAlign.center,
            ) : subtitleWidget,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                    onPressed: buttonCallback,
                    color: Theme.of(context).primaryColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: marginMedium),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                buttonName,
                                style: styleButtonText(),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}