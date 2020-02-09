import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:stream_disposable/stream_disposable.dart';
import 'package:vost/common/event.dart';

abstract class BaseBloc {
  StreamDisposable disposable = StreamDisposable();

  bool isDisposed = false;

  /// Exposes stream so both pages know if an async call is in place
  final _isLoading = BehaviorSubject<bool>();

  Stream<bool> get isLoadingStream => _isLoading.stream;

  /// relays error information
  final _errorSubject = PublishSubject<String>();

  Sink<String> get errorSink => _errorSubject.sink;

  Stream<String> get errorStream => _errorSubject.stream;

  /// tells the page to close
  final _closePageSubject = PublishSubject<Event>();

  Stream<Event> get closePageStream => _closePageSubject.stream;

  BaseBloc();

  void handleOnError(String errorMessage) {
    _errorSubject.add(errorMessage);
  }

  void handleOnErrorWithStackTrace(Error error, String errorMessage) {
    _errorSubject.add(errorMessage);
    debugPrint(error.toString());
    debugPrint(error.stackTrace?.toString());
  }

  void closePage() {
    _closePageSubject.add(Event());
  }

  void showLoading() {
    _isLoading.add(true);
  }

  void hideLoading() {
    _isLoading.add(false);
  }

  @mustCallSuper
  void dispose() {
    errorSink.close();
    _isLoading.close();
    _errorSubject.close();
    _closePageSubject.close();
    isDisposed = true;
    disposable.dispose(className: this.runtimeType.toString());
  }
}
