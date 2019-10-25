import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test/test.dart';

import 'package:vost/constants.dart';
import 'package:vost/data/remote/endpoints/county_endpoints.dart';

import '../../../utils/dioadapter/_base_dio_adapter.dart';

void main() {
  group("CountyEndpoints getCounties()", () {
    test('200 Response Valid Json Test', () async {
      final mockDio =
          BaseDioAdapter.success(path: pathCounties, response: okResponseValid)
              .getMockedDioClient();
      final countyEndpoints = CountyEndpoints(mockDio);

      final counties = await countyEndpoints.getCounties();

      expect(counties.statusCode, 200);
      expect(counties.data, jsonDecode(okResponseValid));
    });

    test('200 Response Invalid Json Test', () async {
      final mockDio = BaseDioAdapter.success(
              path: pathCounties, response: okResponseInvalid)
          .getMockedDioClient();
      final countyEndpoints = CountyEndpoints(mockDio);

      dynamic error;
      try {
        await countyEndpoints.getCounties();
      } catch (e) {
        error = e;
      }
      expect(error, TypeMatcher<DioError>());
      //check if the underlying of DioError error is FormatException
      expect(error.error, TypeMatcher<FormatException>());
    });

    test('500 Response Test', () async {
      final mockDio =
          BaseDioAdapter.failure(path: pathCounties,statusCode: 500,response: okResponseValid).getMockedDioClient();
      final countyEndpoints = CountyEndpoints(mockDio);

      dynamic error;
      try {
        await countyEndpoints.getCounties();
      } catch (e) {
        error = e;
      }
      expect(error, TypeMatcher<DioError>());
      expect(error.response.statusCode,500);
    });
  });
}

final okResponseValid = """
{
    "links": {
        "first": "https://api.vost.pt/v1/counties?page=1",
        "last": "https://api.vost.pt/v1/counties?page=308",
        "next": "https://api.vost.pt/v1/counties?page=2"
    },
    "data": [
        {
            "type": "counties",
            "id": "270",
            "attributes": {
                "code": "181600",
                "name": "SÃO PEDRO DO SUL",
                "created_at": "2019-07-02 13:31:05",
                "updated_at": "2019-07-02 13:31:05"
            },
            "relationships": {
                "district": {
                    "data": null
                }
            },
            "links": {
                "self": "https://api.vost.pt/v1/counties/270"
            }
        }
    ],
    "meta": {
        "items": 1,
        "total": 308
    }
}
""";

final okResponseInvalid = """
{ <<INVALID CHARACTERS>>
    "links": {
        "first": "https://api.vost.pt/v1/counties?page=1",
        "last": "https://api.vost.pt/v1/counties?page=308",
        "next": "https://api.vost.pt/v1/counties?page=2"
    },
    "data": [
        {
            "type": "counties",
            "id": "270",
            "attributes": {
                "code": "181600",
                "name": "SÃO PEDRO DO SUL",
                "created_at": "2019-07-02 13:31:05",
                "updated_at": "2019-07-02 13:31:05"
            },
            "relationships": {
                "district": {
                    "data": null
                }
            },
            "links": {
                "self": "https://api.vost.pt/v1/counties/270"
            }
        }
    ],
    "meta": {
        "items": 1,
        "total": 308
    }
}
""";
