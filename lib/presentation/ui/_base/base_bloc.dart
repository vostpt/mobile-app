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
  final _isLoadingWithMessage = BehaviorSubject<LoadingValues>();

  Stream<LoadingValues> get isLoadingStreamWithMessage =>
      _isLoadingWithMessage.stream;

  /// relays error information
  final _errorSubject = PublishSubject<String>();

  Sink<String> get errorSink => _errorSubject.sink;

  Stream<String> get errorStream => _errorSubject.stream;

  /// tells the page to close
  final _closePageSubject = PublishSubject<Event>();

  Stream<Event> get closePageStream => _closePageSubject.stream;

  BaseBloc();

  handleOnError(String errorMessage) {
    _errorSubject.add(errorMessage);
  }

  handleOnErrorWithStackTrace(Error error, String errorMessage) {
    _errorSubject.add(errorMessage);
    debugPrint(error.toString());
    debugPrint(error.stackTrace?.toString());
  }

  closePage() {
    _closePageSubject.add(Event());
  }

  @mustCallSuper
  dispose() {
    errorSink.close();
    _isLoadingWithMessage.close();
    _errorSubject.close();
    _closePageSubject.close();
    isDisposed = true;
    disposable.dispose(className: this.runtimeType.toString());
  }
}

class LoadingValues {
  bool isLoading;
  String message;

  LoadingValues(this.isLoading, this.message);
}
