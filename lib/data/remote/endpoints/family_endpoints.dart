import 'package:dio/dio.dart';

import 'package:vost/constants.dart';

class FamilyEndpoints {
  final Dio _dio;

  FamilyEndpoints(this._dio);

  Future<Response> getFamilies() {
    return _dio.get(pathFamilies);
  }
}
