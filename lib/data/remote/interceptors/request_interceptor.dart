import 'dart:async';

import 'package:dio/dio.dart';
import 'package:vost/data/remote/interceptors/logging_interceptor.dart';

class RequestInterceptor {
  LoggingInterceptor _loggingInterceptor;

  RequestInterceptor(this._loggingInterceptor);

  /// Generates the Request Interceptor
  ///
  /// [requestOptions] request options
  Future<Options> getRequestInterceptor(Options requestOptions) async {
    _loggingInterceptor.printRequest(requestOptions);
    return requestOptions;
  }
}
