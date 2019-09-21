import 'package:dio/dio.dart';

import '../../../constants.dart';

class SpeciesEndpoints {

  Dio _dio;

  SpeciesEndpoints(this._dio);

  Future<Response> getSpecies() {
    return _dio.get(pathSpecies);
  }
}