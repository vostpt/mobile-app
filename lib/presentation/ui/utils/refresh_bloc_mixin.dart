import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vost/common/event.dart';
import 'package:vost/presentation/ui/_base/base_bloc.dart';

mixin RefreshBlocMixin on BaseBloc {
  var _refreshErrorSubject = PublishSubject<Event>();
  Sink<Event> get refreshErrorSink => _refreshErrorSubject.sink;
  Stream<Event> get refreshErrorStream => _refreshErrorSubject.stream;

  void handleRefreshErrorWithStackTrace(Error error, String errorType) {
    _refreshErrorSubject.add(Event());
    debugPrint(error.toString());
    debugPrint(error.stackTrace?.toString());
  }
}
