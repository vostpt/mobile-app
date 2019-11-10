import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

/// Class for handling writing and reading directly from SharedPreferences
///
/// [_sharedPreferences] is given by the [Future] [SharedPreferences.getInstance()]
class VostSharedPreferences {
  SharedPreferences _sharedPreferences;

  VostSharedPreferences(this._sharedPreferences);

  //region Seen Tutorial
  bool hasSeenTutorial() {
    return _sharedPreferences.getBool(_seenTutorialKey);
  }

  Future<bool> saveHasSeenTutorial(bool value) async {
    return await _sharedPreferences.setBool(_seenTutorialKey, value);
  }
  //endregion

  //region Saved Occurrences
  List<String> getListOfOccurrences() {
    return _sharedPreferences.getStringList(_listOfSavedOccurrences);
  }

  Future<bool> saveListOfOccurrences(List<String> preferences) {
    return _sharedPreferences.setStringList(_listOfSavedOccurrences, preferences);
  }
  //endregion
}

const _seenTutorialKey = "seen_tutorial";
const _listOfSavedOccurrences = "list_of_saved_occurrences";