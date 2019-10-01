import 'package:dio/dio.dart';

import 'package:vost/constants.dart';

class TypesEndpoints {

  final Dio _dio;

  TypesEndpoints(this._dio);

  Future<Response> getTypes() {
    return _dio.get(pathTypes);
  }
}