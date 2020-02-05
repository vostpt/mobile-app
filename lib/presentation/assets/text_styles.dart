import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'dimensions.dart';

/// Main Text theme used in the application, currently using `google_fonts` dependency
/// to load the Lato Font and applying in the whole project in the class [VostApp]
/// set at the widget [MaterialApp] property [theme].
TextTheme mainTextTheme(BuildContext context) =>
    GoogleFonts.latoTextTheme(Theme.of(context).textTheme);

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
      color: colorTextGrey,
    );

TextStyle styleFlatButton() => TextStyle(
      fontSize: textSizeButton,
    );

TextStyle styleOccurrenceTitle() => TextStyle(
      fontSize: textSizeMedium,
      fontWeight: FontWeight.w400,
    );

TextStyle styleLastUpdated() =>
    TextStyle(fontSize: textSizeNormal, color: colorTextGrey);

TextStyle styleMeans() => TextStyle(
      fontSize: textSizeNormal,
      color: colorTextGrey,
      fontWeight: FontWeight.w600,
    );

TextStyle styleMeansNumber() => TextStyle(
      fontSize: textSizeLarge,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

TextStyle styleTimeWidgetText() => TextStyle(
      fontSize: textSizeLarge,
      color: Colors.green,
      fontWeight: FontWeight.bold,
    );
