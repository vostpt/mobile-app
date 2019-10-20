import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimensions.dart';

TextStyle styleBottomBarText() => TextStyle(
      color: colorPrimary,
    );

TextStyle styleButtonText() => TextStyle(
    color: Colors.white, fontSize: textSizeNormal, fontWeight: FontWeight.w600);

TextStyle styleIntroSubtitle() => TextStyle(fontSize: textSizeIntroSubTitle);

TextStyle styleIntroTitle() => TextStyle(
      fontSize: textSizeIntroTitle,
      fontWeight: FontWeight.bold,
      color: colorPrimary,
    );

TextStyle styleOccurrencesSubText() => TextStyle(
      color: Color(0x99000000),
    );
