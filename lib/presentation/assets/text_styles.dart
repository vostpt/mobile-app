import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimensions.dart';

TextStyle styleBottomBarText() => TextStyle(
      color: colorPrimary,
    );

TextStyle styleButtonText() => TextStyle(
    color: Colors.white, fontSize: textSizeNormal, fontWeight: FontWeight.w600);

TextStyle styleIntroContent() =>
    TextStyle(fontSize: textSizeIntroContent, color: colorTextGrey);

TextStyle styleMediumBlackText() =>
    TextStyle(fontSize: 16, color: Colors.black);

TextStyle styleAllowAccessTextButton() =>
    TextStyle(fontSize: textSizeLarge, color: colorPrimary);

TextStyle styleIntroTitle() => TextStyle(
      fontSize: textSizeIntroTitle,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );

TextStyle styleBottomBarTextAboutPage() => TextStyle(
      color: Colors.white,
      fontSize: textSizeLarge,
    );

TextStyle styleContentTextAboutPage() => TextStyle(
      color: Colors.black,
      fontSize: textSizeLarge,
    );

TextStyle styleContactHeadingAboutPage() => TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: textSizeHeading,
    );

TextStyle styleOccurrencesSubText() => TextStyle(
      color: gray_info,
    );

TextStyle styleFlatButton() => TextStyle(
      fontSize: textSizeButton,
    );

TextStyle styleOccurrenceTitle() => TextStyle(
      fontSize: textSizeMedium,
      fontWeight: FontWeight.w400,
    );

TextStyle styleLastUpdated() =>
    TextStyle(fontSize: textSizeNormal, color: gray_info);

TextStyle styleMeans() => TextStyle(
      fontSize: textSizeNormal,
      color: gray_info,
      fontWeight: FontWeight.w600,
    );

TextStyle styleMeansNumber() => TextStyle(
      fontSize: textSizeHeading,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

TextStyle styleTimeWidgetText() => TextStyle(
      fontSize: textSizeHeading,
      color: green_400,
      fontWeight: FontWeight.bold,
    );
