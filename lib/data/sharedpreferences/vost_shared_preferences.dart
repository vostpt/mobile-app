import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

/// Class for handling writing and reading directly from SharedPreferences
///
/// [_sharedPreferences] is given by the [Future] [SharedPreferences.getInstance()]
class VostSharedPreferences {
  SharedPreferences _sharedPreferences;

  VostSharedPreferences(this._sharedPreferences);

  //region Test
  String getTestKey() {
    return _sharedPreferences.getString(_testKey);
  }

  Future<bool> saveTestKey(String key) async {
    return await _sharedPreferences.setString(_testKey, key);
  }
  //endregion
}

const _testKey = "test_shared";