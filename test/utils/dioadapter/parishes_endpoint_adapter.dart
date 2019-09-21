import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:vost/constants.dart';

class ParishEndpointAdapter extends HttpClientAdapter {
  DefaultHttpClientAdapter _defaultHttpClientAdapter =
  DefaultHttpClientAdapter();

  static var parishesResponse = """
  {
    "links": {
        "first": "https://api.vost.pt/v1/parishes?page=1",
        "last": "https://api.vost.pt/v1/parishes?page=3092",
        "next": "https://api.vost.pt/v1/parishes?page=2"
    },
    "data": [
        {
            "type": "parishes",
            "id": "3086",
            "attributes": {
                "code": "480106",
                "name": "LOMBA",
                "created_at": "2019-07-02 13:31:18",
                "updated_at": "2019-07-02 13:31:18"
            },
            "links": {
                "self": "https://api.vost.pt/v1/parishes/3086"
            }
        }
    ],
    "meta": {
        "items": 1,
        "total": 3092
    }
}
  """;

  @override
  Future<ResponseBody> fetch(RequestOptions options, Stream<List<int>> requestStream, Future cancelFuture) async {
    Uri uri = options.uri;
    if (uri.host == mockHost) {
      switch (uri.path) {
        case "/$pathParishes":
          return ResponseBody.fromString(
            jsonEncode(parishesResponse),
            200,
            DioHttpHeaders.fromMap({
              HttpHeaders.contentTypeHeader: ContentType.json,
            }),
          );
        default:
          return ResponseBody.fromString("", 404, DioHttpHeaders());
      }
    }
    return _defaultHttpClientAdapter.fetch(
        options, requestStream, cancelFuture);
  }
}

