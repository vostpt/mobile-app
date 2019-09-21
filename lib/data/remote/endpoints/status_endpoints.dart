import 'package:dio/dio.dart';

import '../../../constants.dart';

class StatusEndpoints {

  Dio _dio;

  StatusEndpoints(this._dio);

  Future<Response> getStatuses() {
    return _dio.get(pathStatuses);
  }
}