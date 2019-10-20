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

TextStyle styleOccurrencesSubText() => TextStyle(
      color: Color(0x99000000),
    );

TextStyle styleFlatButton() => TextStyle(
  fontSize: textSizeButton,

);
