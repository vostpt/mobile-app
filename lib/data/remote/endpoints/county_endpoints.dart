import 'package:dio/dio.dart';

import '../../../constants.dart';

class CountyEndpoints {

  Dio _dio;

  CountyEndpoints(this._dio);

  Future<Response> getCounties() {
    return _dio.get(pathCounties);
  }
}