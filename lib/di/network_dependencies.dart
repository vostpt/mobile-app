import 'dart:async';

import 'package:dio/dio.dart';
import 'package:vost/data/remote/interceptors/error_interceptor.dart';
import 'package:vost/data/remote/interceptors/logging_interceptor.dart';
import 'package:vost/data/remote/interceptors/request_interceptor.dart';
import 'package:vost/data/remote/interceptors/response_interceptor.dart';

//region API

/// Creates instance of [Dio] to be used in the [remote] layer of the app, fetch
/// data from the API
///
/// [baseConfigurations] hold information about to the [baseUrl], [connectTimeout] and [receiveTimeout]
/// [config] states the environment (dev or prod)
///
Future<Dio> createDio(
    BaseOptions baseConfiguration,
    ErrorInterceptor errorInterceptor,
    ResponseInterceptor responseInterceptor,
    RequestInterceptor requestInterceptor) async {
  var dio = Dio(baseConfiguration);
  dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options) async =>
          await requestInterceptor.getRequestInterceptor(options),
      onResponse: (Response response) =>
          responseInterceptor.getResponseInterceptor(response),
      onError: (DioError dioError) =>
          errorInterceptor.getErrorInterceptors(dioError)));
  return dio;
}

/// Creates Dio Options for initialization
///
/// [baseUrl] base url for the flavor configuration
/// [connectionTimeout] Connection Timeout -> Sending Data
/// [connectionReadTimeout] Receive Timeout -> Receiving Data
BaseOptions createDioOptions(
    String baseUrl, int connectionTimeout, int connectionReadTimeout) {
  return BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: connectionTimeout,
    receiveTimeout: connectionReadTimeout,
  );
}
//endregion

//region Interceptors
/// Created Logging Interceptor
LoggingInterceptor getLoggingInterceptor() {
  return LoggingInterceptor();
}

/// Create Error Interceptors
///
/// [loggingInterceptor] Logging Interceptor
ErrorInterceptor getErrorInterceptor(LoggingInterceptor loggingInterceptor) {
  return ErrorInterceptor(loggingInterceptor);
}

/// Create Response Interceptors
///
/// [loggingInterceptor] Logging Interceptor
ResponseInterceptor getResponseInterceptor(
    LoggingInterceptor loggingInterceptor) {
  return ResponseInterceptor(loggingInterceptor);
}

/// Create Request Interceptors
///
/// [loggingInterceptor] Logging Interceptor
/// [requestManager] Request Manager to deal with the headers
RequestInterceptor getRequestInterceptor(
    LoggingInterceptor loggingInterceptor) {
  return RequestInterceptor(loggingInterceptor);
}

//endregion
