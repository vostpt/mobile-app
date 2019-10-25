import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:vost/constants.dart';
import 'package:vost/data/remote/endpoints/county_endpoints.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/services/county_service.dart';

import '../../../utils/dioadapter/_base_dio_adapter.dart';

class MockCountyEndpoint extends Mock implements CountyEndpoints {}

void main() {
  group("CountyService getCounties()", () {
    test('200 Response Valid Json Test', () async {
      final mockEndpoint = MockCountyEndpoint();
      final baseListResponse = BaseListResponse.fromJson((okResponseValid));
      final mockResponse = Response(statusCode: 200, data: (okResponseValid));
      when(mockEndpoint.getCounties())
          .thenAnswer((_) => Future.value(mockResponse));
      final service = CountyService(mockEndpoint);

      final counties = service.getCounties();

      verify(mockEndpoint.getCounties()).called(1);
      await expectLater(counties, emits(baseListResponse));
    });

    test('Faield Request', () async {
      final mockEndpoint = MockCountyEndpoint();
      when(mockEndpoint.getCounties()).thenThrow(DioError(message: "error"));
      final service = CountyService(mockEndpoint);

      dynamic error;
      try {
        final counties = service.getCounties();
      } catch (e) {
        error = e;
      }
      expect(error, TypeMatcher<DioError>());
      expect(error.message,"error");
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
                "district": null
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
