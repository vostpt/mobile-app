import 'package:rxdart/rxdart.dart';
import 'package:vost/common/event.dart';
import 'package:vost/domain/managers/shared_preferences_manager.dart';
import 'package:vost/presentation/ui/_base/base_bloc.dart';

class IntroBloc extends BaseBloc {
  var _navigateSubject = PublishSubject<Event>();
  Sink<Event> get navigateSink => _navigateSubject.sink;

  IntroBloc(SharedPreferencesManager sharedPrefs) {
    disposable.add(_navigateSubject.stream
        .listen((_) => sharedPrefs.saveHasSeenTutorial(true)));
  }
}
