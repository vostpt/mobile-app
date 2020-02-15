import 'package:dio/dio.dart';

import 'package:vost/constants.dart';

class SpeciesEndpoints {
  final Dio _dio;

  SpeciesEndpoints(this._dio);

  Future<Response> getSpecies() {
    return _dio.get(pathSpecies);
  }
}
