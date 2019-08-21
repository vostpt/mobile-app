import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vost/localization/vost_localizations.dart';

class VostLocalizationsDelegate
    extends LocalizationsDelegate<VostLocalizations> {
  const VostLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['pt', 'en'].contains(locale.languageCode);

  @override
  Future<VostLocalizations> load(Locale locale) =>
      VostLocalizations.load(locale);

  @override
  //todo: this must be changed if the app changes the language in runtime
  bool shouldReload(LocalizationsDelegate<VostLocalizations> old) => false;
}
