import 'dart:async';

import 'package:vost/data/sharedpreferences/vost_shared_preferences.dart';


/// Class for managing data from Shared Preferences
/// 
/// In this class we will manipulate data so that it can be presented to
/// the UI, for example, convert an int to a DateTime or assigning default
/// values to Strings
class SharedPreferencesManager {
  VostSharedPreferences _sharedPreferences;

  SharedPreferencesManager(this._sharedPreferences);

  //region Seen Tutorial
  bool hasSeenTutorial() {
    return _sharedPreferences.hasSeenTutorial() ?? false;
  }

  Future<bool> saveHasSeenTutorial(bool value) {
    return _sharedPreferences.saveHasSeenTutorial(value);
  }
  //endregion
}