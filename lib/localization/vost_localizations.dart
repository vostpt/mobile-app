import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './generated/l10n/messages_all.dart';

/// In order to generate new arb files we must run
/// `flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/localization/generated/l10n lib/localization/vost_localizations.dart`
/// To add new files, add the arb files with the `_pt` or other iso code suffix
/// Also, open the file and add this at the top:
///     "@@locale": "pt",
/// After editing and creating the necessary translations we need to run
/// `flutter pub pub run intl_translation:generate_from_arb lib/localization/vost_localizations.dart lib/localization/generated/l10n/*.arb  --output-dir=lib/localization/generated/l10n`
///
/// For creating new translations, please use the following Live Templates (https://medium.com/flutter-community/live-templates-or-how-to-spend-less-time-writing-boilerplate-code-on-flutter-with-intellij-7fb2f769f23)
///
/// Simple localization:
///
/// ``
///   String get $NAME$ => Intl.message(
///    "$END$",
///    name: '$NAME$',
///    desc: '$DESCRIPTION$',
///  );
/// ```
///
/// Localization with parameter:
///
/// ```
///   String $NAME$(String $VARIABLE$) => Intl.message(
///      "$END$ $$$VARIABLE$",
///      name: '$NAME$',
///      args: [$VARIABLE$],
///      desc: '$DESCRIPTION$',
///      examples: const {'$VARIABLE$' : '$EXAMPLE$'}
///  );
/// ```

class VostLocalizations {
  /// Initialize localization systems and messages
  static Future<VostLocalizations> load(Locale locale) async {
    // If we're given "en_US", we'll use it as-is. If we're
    // given "en", we extract it and use it.
    final String localeName =
        locale.countryCode == null || locale.countryCode.isEmpty
            ? locale.languageCode
            : locale.toString();

    // We make sure the locale name is in the right format e.g.
    // converting "en-US" to "en_US".
    final String canonicalLocaleName = Intl.canonicalizedLocale(localeName);

    // Load localized messages for the current locale.
    await initializeMessages(canonicalLocaleName);
    // We'll uncomment the above line after we've built our messages file

    // Force the locale in Intl.
    Intl.defaultLocale = canonicalLocaleName;

    return VostLocalizations();
  }

  // Localized Messages
  String get appTitle => Intl.message(
        "VOST - en",
        name: 'appTitle',
        desc: 'App title',
      );

  //region Home
  /// Home
  String get textFollowing => Intl.message(
        "Following",
        name: 'textFollowing',
        desc: 'text Following',
      );

  String get textRecent => Intl.message(
        "Recent",
        name: 'textRecent',
        desc: 'text Recent',
      );

  String get textAbout => Intl.message(
        "About",
        name: 'textAbout',
        desc: 'text About',
      );

  String get textReportProblem => Intl.message(
        "Report a Problem",
        name: 'textReportProblem',
        desc: 'text Report Problem',
      );

  String get textContactHeading => Intl.message("Contactos",
      name: 'textContactheading', desc: 'Contacts Heading About Page');

  String get textContentAbout => Intl.message(
      "Nullam tempor erat sit amet pulvinar commodo. Cras ut est sit amet sapien auctor molestie. In ac tellus sagittis, elementum quam in, placerat torotr. In hac habitasse platea dictumst. Quisque vitae egestas nisl. Quisque urna nunc, egsatas vel lorem sit amet.",
      name: 'textContentAbout',
      desc: 'About Page Content');

  String get textTutorialAboutPage => Intl.message("TUTORIAL",
      name: 'textTutorialAboutPage', desc: 'Tutorial Button About Page');

  String get textContributionsAboutPage => Intl.message("CONTRIBUIDORES",
      name: 'textContributionsAboutPage',
      desc: 'Contributions Button About Page');
  //endregion

  /// Retrieve localization resources for the widget tree
  /// corresponding to the given `context`
  static VostLocalizations of(BuildContext context) =>
      Localizations.of<VostLocalizations>(context, VostLocalizations);
}
