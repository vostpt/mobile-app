import 'package:dio/dio.dart';

import '../../../constants.dart';

class DistrictEndpoints {

  final Dio _dio;

  DistrictEndpoints(this._dio);

  Future<Response> getDistricts() {
    return _dio.get(pathDistricts);
  }
}