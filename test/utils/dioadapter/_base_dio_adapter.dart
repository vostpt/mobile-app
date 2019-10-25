import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:vost/constants.dart';

class BaseDioAdapter extends HttpClientAdapter {
  final DefaultHttpClientAdapter _defaultHttpClientAdapter =
      DefaultHttpClientAdapter();

  final String path;
  final String response;
  final int statusCode;

  BaseDioAdapter(this.path, this.response, this.statusCode);

  BaseDioAdapter.success({this.path, this.response}) : statusCode = 200;

  BaseDioAdapter.failure({this.path, this.response, this.statusCode = 500});

  @override
  Future<ResponseBody> fetch(RequestOptions options,
      Stream<List<int>> requestStream, Future cancelFuture) async {
    Uri uri = options.uri;
    if (uri.host == mockHost) {
      if(uri.path == "/$path"){
        return ResponseBody.fromString(
          response,
          statusCode,
          DioHttpHeaders.fromMap({
            HttpHeaders.contentTypeHeader: ContentType.json,
          }),
        );
      }else{
        return ResponseBody.fromString("", 404, DioHttpHeaders());
      }
    }
    return _defaultHttpClientAdapter.fetch(
        options, requestStream, cancelFuture);
  }

  Dio getMockedDioClient(){
    final dio = Dio();
    dio.options.baseUrl = mockBase;
    dio.httpClientAdapter = this;
    return dio;
  }
}
