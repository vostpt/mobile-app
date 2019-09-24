import 'package:dio/dio.dart';

import '../../../constants.dart';

class TypesEndpoints {

  final Dio _dio;

  TypesEndpoints(this._dio);

  Future<Response> getTypes() {
    return _dio.get(pathTypes);
  }
}