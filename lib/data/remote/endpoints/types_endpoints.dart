import 'package:dio/dio.dart';

import '../../../constants.dart';

class TypesEndpoints {

  Dio _dio;

  TypesEndpoints(this._dio);

  Future<Response> getTypes() {
    return _dio.get(pathTypes);
  }
}