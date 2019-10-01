import 'package:dio/dio.dart';

import 'package:vost/constants.dart';

class DistrictEndpoints {

  final Dio _dio;

  DistrictEndpoints(this._dio);

  Future<Response> getDistricts() {
    return _dio.get(pathDistricts);
  }
}