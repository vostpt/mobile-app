import 'package:dio/dio.dart';
import 'package:vost/data/remote/interceptors/logging_interceptor.dart';

class ErrorInterceptor {
  LoggingInterceptor _loggingInterceptor;

  ErrorInterceptor(this._loggingInterceptor);

  DioError getErrorInterceptors(DioError dioError) {
    if (checkConnection(dioError)) {
      return dioError;
    }

    _loggingInterceptor.printError(dioError);
    return dioError;
  }

  /// Method to verify if there is a problem connecting to the internet so that we can show a message
  /// to the user with the problem
  ///
  /// This is given by the Dio Error Type of `DEFAULT`
  bool checkConnection(DioError error) {
    if (error.type == DioErrorType.DEFAULT) {
      return true;
    }
    return false;
  }
}
