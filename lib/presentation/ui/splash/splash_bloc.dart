import 'package:rxdart/rxdart.dart';
import 'package:vost/presentation/ui/_base/base_bloc.dart';
import 'package:vost/domain/managers/shared_preferences_manager.dart';

class SplashBloc extends BaseBloc {
  var hasSeenTutorialSubject = BehaviorSubject<bool>();

  SplashBloc(SharedPreferencesManager sharedPrefs) {
    hasSeenTutorialSubject.add(sharedPrefs.hasSeenTutorial());
  }
}
