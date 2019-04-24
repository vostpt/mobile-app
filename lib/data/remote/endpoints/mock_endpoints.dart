import 'package:dio/dio.dart';

const todoEndpoint = "todos/1";

class MockEndpoints {

  Dio _dio;

  MockEndpoints(this._dio);

  Future<Response> getMockData() {
    return _dio.get(todoEndpoint);
  }
}