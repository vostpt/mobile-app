import 'package:dio/dio.dart';

import '../../../constants.dart';

class ParishEndpoints {

  final Dio _dio;

  ParishEndpoints(this._dio);

  Future<Response> getParishes() {
    return _dio.get(pathParishes);
  }
}