import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:test/test.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/data/remote/models/response/meta_response.dart';
import 'package:vost/data/remote/models/serializers/serializers.dart';

void main() {
  //region Model Testing
  group("Model Testing", () {
    group("BaseResponse", () {
      test("Deserialize Links from json", () {
        const firstLink = "https://api.vost.pt/v1/parishes?page=1";
        const lastLink = "https://api.vost.pt/v1/parishes?page=3092";
        const nextLink = "https://api.vost.pt/v1/parishes?page=2";
        const jsonString = """
        {
                "first": "$firstLink",
                "last": "$lastLink",
                "next": "$nextLink"
            }
        """;

        LinkResponse object = serializers.deserializeWith(
            LinkResponse.serializer, json.decode(jsonString));

        expect(object.first, firstLink);
        expect(object.last, lastLink);
        expect(object.next, nextLink);
      });

      test("Deserialize MetaResponse from json", () {
        const items = 1;
        const total = 3092;
        const jsonString = """{
                "items": $items,
                "total": $total
            }""";

        MetaResponse object = serializers.deserialize(json.decode(jsonString),
            specifiedType: FullType(MetaResponse));

        expect(object.items, items);
        expect(object.total, total);
      });
    });
    //endregion
  });
}
