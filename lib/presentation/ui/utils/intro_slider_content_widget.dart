import 'package:flutter/material.dart';
import 'package:vost/presentation/assets/dimensions.dart';
import 'package:vost/presentation/assets/text_styles.dart';

class IntroSliderContentWidget extends StatelessWidget {
  IntroSliderContentWidget(
      {Key key, this.title, this.subtitle, this.imageAsset, this.contentWidget})
      : super(key: key);

  final String title;
  final String subtitle;
  final String imageAsset;
  final Widget contentWidget;

  @override
  Widget build(BuildContext context) {
    final availableWidth = MediaQuery.of(context).size.width - 2 * marginScreen;
    return Container(
      padding: EdgeInsets.all(marginScreen),
      width: double.infinity,
      alignment: Alignment(0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(
              width: availableWidth*0.75,
              height: availableWidth*0.75,
              child: Image(image: AssetImage(imageAsset))),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: marginMedium),
            child: Text(
              title,
              style: styleIntroTitle(),
            ),
          ),
          Container(
            width: double.infinity,
            child: Text(
              subtitle,
              style: styleIntroContent(),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: marginMedium,),
          contentWidget ?? Container()
        ],
      ),
    );
  }
}
