import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimensions.dart';

TextStyle styleBottomBarText() => TextStyle(
      color: colorPrimary,
    );

TextStyle styleButtonText() => TextStyle(
    color: Colors.white, fontSize: textSizeNormal, fontWeight: FontWeight.w600);

TextStyle styleIntroContent() => TextStyle(
    fontSize: textSizeIntroContent,
    color: colorTextGrey
);

TextStyle styleIntroTitle() => TextStyle(
      fontSize: textSizeIntroTitle,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );

TextStyle styleBottomBarTextAboutPage() => TextStyle(
      color: Colors.white,
      fontSize: 18.0,
    );

TextStyle styleContentTextAboutPage() => TextStyle(
      color: Colors.black,
      fontSize: 18.0,
    );

TextStyle styleContactHeadingAboutPage() => TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 24.0,
    );
    
TextStyle styleOccurrencesSubText() => TextStyle(
      color: Color(0x99000000),
    );

TextStyle styleFlatButton() => TextStyle(
  fontSize: textSizeButton,

);
