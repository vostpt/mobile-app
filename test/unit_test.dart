import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:vost/constants.dart';
import 'package:vost/data/remote/endpoints/parish_endpoints.dart';
import 'package:vost/data/remote/models/response/attribute_response.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/base_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/data/remote/models/response/meta_response.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/serializers/serializers.dart';
import 'package:vost/data/remote/services/parish_service.dart';
import 'package:vost/domain/managers/parish_manager.dart';
import 'package:vost/domain/mappers/attribute_mapper.dart';
import 'package:vost/domain/mappers/base_data_mapper.dart';
import 'package:vost/domain/mappers/link_mapper.dart';
import 'package:vost/domain/mappers/meta_mapper.dart';
import 'package:vost/domain/mappers/data_mapper.dart';
import 'package:vost/domain/models/attribute_model.dart';
import 'package:vost/domain/models/base_list_model.dart';
import 'package:vost/domain/models/link_model.dart';
import 'package:vost/domain/models/meta_model.dart';
import 'package:vost/domain/models/data_model.dart';

import 'utils/dioadapter/parishes_endpoint_adapter.dart';

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

      test("Deserialize BaseResponse<String> from json", () {
        const firstLink = "https://api.vost.pt/v1/parishes?page=1";
        const lastLink = "https://api.vost.pt/v1/parishes?page=3092";
        const nextLink = "https://api.vost.pt/v1/parishes?page=2";
        const type = "type";
        const items = 1;
        const total = 3092;
        const jsonString = """{
            "links": {
                "first": "$firstLink",
                "last": "$lastLink",
                "next": "$nextLink"
            },
            "data": "$type",
            "meta": {
                "items": $items,
                "total": $total
            }
        }""";

        BaseResponse<String> object = serializers.deserialize(
            json.decode(jsonString),
            specifiedType:
                FullType(BaseResponse, const [const FullType(String)]));

        expect(object.data, type);
        expect(object.links.first, firstLink);
        expect(object.links.last, lastLink);
        expect(object.links.next, nextLink);
        expect(object.meta.items, items);
        expect(object.meta.total, total);
      });

      test("Deserialize BaseListResponse<String> from json", () {
        const firstLink = "https://api.vost.pt/v1/parishes?page=1";
        const lastLink = "https://api.vost.pt/v1/parishes?page=3092";
        const nextLink = "https://api.vost.pt/v1/parishes?page=2";
        const type = "type";
        const items = 1;
        const total = 3092;
        const jsonString = """{
            "links": {
                "first": "$firstLink",
                "last": "$lastLink",
                "next": "$nextLink"
            },
            "data": ["$type"],
            "meta": {
                "items": $items,
                "total": $total
            }
        }""";

        BaseListResponse<String> object = serializers.deserialize(
            json.decode(jsonString),
            specifiedType:
                FullType(BaseListResponse, const [const FullType(String)]));

        expect(object.data, [type]);
        expect(object.links.first, firstLink);
        expect(object.links.last, lastLink);
        expect(object.links.next, nextLink);
        expect(object.meta.items, items);
        expect(object.meta.total, total);
      });

      //region Mappers
      test("MetaMapper test", () {
        var metaMapper = MetaResponseMapper();

        const items = 1;
        const total = 3092;

        var initialObject = MetaResponse((b) => b
          ..items = items
          ..total = total);

        var expectedObject = MetaModel((b) => b
          ..items = items
          ..total = total);

        expect(metaMapper.map(initialObject), expectedObject);
      });

      test("AttributeMapper", () {
        var linkMapper = LinkResponseMapper();

        const firstLink = "https://api.vost.pt/v1/parishes?page=1";
        const lastLink = "https://api.vost.pt/v1/parishes?page=3092";
        const nextLink = "https://api.vost.pt/v1/parishes?page=2";
        const selfLink = "https://api.vost.pt/v1/parishes?page=10";

        var initialObject = LinkResponse((b) => b
          ..first = firstLink
          ..last = lastLink
          ..next = nextLink
          ..self = selfLink);

        var expectedObject = LinkModel((b) => b
          ..first = firstLink
          ..last = lastLink
          ..next = nextLink
          ..self = selfLink);

        expect(linkMapper.map(initialObject), expectedObject);
      });
      //endregion
    });

    group("Parish", () {
      //region deserializing
      test("Deserialize ParishResponse from json", () {
        const firstLink = "https://api.vost.pt/v1/parishes?page=1";
        const lastLink = "https://api.vost.pt/v1/parishes?page=3092";
        const nextLink = "https://api.vost.pt/v1/parishes?page=2";
        const type = "parishes";
        const id = "3086";
        const code = "480106";
        const name = "LOMBA";
        const createdDate = "2019-07-02 13:31:18";
        const updatedDate = "2019-07-02 13:31:18";
        const selfLink = "https://api.vost.pt/v1/parishes/3086";
        const items = 1;
        const total = 3092;
        const jsonString = """{
            "links": {
                "first": "$firstLink",
                "last": "$lastLink",
                "next": "$nextLink"
            },
            "data": [
                {
                    "type": "$type",
                    "id": "$id",
                    "attributes": {
                        "code": "$code",
                        "name": "$name",
                        "created_at": "$createdDate",
                        "updated_at": "$updatedDate"
                    },
                    "links": {
                        "self": "$selfLink"
                    }
                }
            ],
            "meta": {
                "items": $items,
                "total": $total
            }
        }""";

        var object = DataResponse.fromJson(jsonString);

        expect(object.links.first, firstLink);
        expect(object.links.last, lastLink);
        expect(object.links.next, nextLink);
        expect(object.meta.items, items);
        expect(object.meta.total, total);
        expect(object.data[0].type, type);
        expect(object.data[0].id, id);
        expect(object.data[0].attributes.code, code);
        expect(object.data[0].attributes.name, name);
        expect(object.data[0].attributes.createdAt, createdDate);
        expect(object.data[0].attributes.updatedAt, updatedDate);
        expect(object.data[0].links.self, selfLink);
      });
      //endregion

      //region mappers
      test("AttributesMapper", () {
        var mapper = AttributeResponseMapper();

        const code = "480106";
        const name = "LOMBA";
        const createdDate = "2019-07-02 13:31:18";
        const updatedDate = "2019-07-02 13:31:18";

        var initialObject = AttributeResponse(((b) => b
          ..code = code
          ..name = name
          ..createdAt = createdDate
          ..updatedAt = updatedDate));

        var expectedObject = AttributeModel(((b) => b
          ..code = code
          ..name = name
          ..createdAt = createdDate
          ..updatedAt = updatedDate));

        expect(mapper.map(initialObject), expectedObject);
      });

      test("Base Parish Mapper", () {
        const firstLink = "https://api.vost.pt/v1/parishes?page=1";
        const lastLink = "https://api.vost.pt/v1/parishes?page=3092";
        const nextLink = "https://api.vost.pt/v1/parishes?page=2";
        const type = "parishes";
        const id = "3086";
        const code = "480106";
        const name = "LOMBA";
        const createdDate = "2019-07-02 13:31:18";
        const updatedDate = "2019-07-02 13:31:18";
        const selfLink = "https://api.vost.pt/v1/parishes/3086";
        const items = 1;
        const total = 3092;

        var initialAttribute = AttributeResponse(((b) => b
          ..code = code
          ..name = name
          ..createdAt = createdDate
          ..updatedAt = updatedDate));

        var expectedAttribute = AttributeModel(((b) => b
          ..code = code
          ..name = name
          ..createdAt = createdDate
          ..updatedAt = updatedDate));

        var initialLink = LinkResponse((b) => b
          ..first = firstLink
          ..last = lastLink
          ..next = nextLink);

        var expectedLink = LinkModel((b) => b
          ..first = firstLink
          ..last = lastLink
          ..next = nextLink);

        var initialMeta = MetaResponse((b) => b
          ..items = items
          ..total = total);

        var expectedMeta = MetaModel((b) => b
          ..items = items
          ..total = total);

        var initialParishLink = LinkResponse((b) => b..self = selfLink);

        var expectedParishLink = LinkModel((b) => b..self = selfLink);

        var initialParish = DataResponse((b) => b
          ..links = initialParishLink.toBuilder()
          ..attributes = initialAttribute.toBuilder()
          ..type = type
          ..id = id);

        var expectedParish = DataModel((b) => b
          ..links = expectedParishLink.toBuilder()
          ..attributes = expectedAttribute.toBuilder()
          ..type = type
          ..id = id);

        var initialObject = BaseListResponse<DataResponse>((b) => b
          ..links = initialLink.toBuilder()
          ..meta = initialMeta.toBuilder()
          ..data = ListBuilder<DataResponse>([initialParish]));

        var expectedObject = BaseListModel<DataModel>((b) => b
          ..links = expectedLink.toBuilder()
          ..meta = expectedMeta.toBuilder()
          ..data = ListBuilder<DataModel>([expectedParish]));

        var attributeMapper = AttributeResponseMapper();
        var linkMapper = LinkResponseMapper();
        var parishMapper =
        DataResponseMapper(attributeMapper, linkMapper);
        var metaMapper = MetaResponseMapper();
        var mapper =
            BaseParishResponseMapper(linkMapper, metaMapper, parishMapper);

        expect(mapper.map(initialObject), expectedObject);
      });
      //endregion

      //region API calls
      test("Mock API call", () async {
        Dio dio = Dio();
        dio.options.baseUrl = baseUrlProd;

        var endpoints = ParishEndpoints(dio);

        var response = await endpoints.getParishes();

        expect(response.statusCode, 200);
      });

      test("Mock Dio API call - Endpoints", () async {
        var baseUrl = mockBase;
        var dio = new Dio()
          ..options = BaseOptions(baseUrl: baseUrl)
          ..httpClientAdapter = ParishEndpointAdapter();

        var endpoints = ParishEndpoints(dio);

        var response = await endpoints.getParishes();

        expect(response.data, ParishEndpointAdapter.parishesResponse);
      });

      test("Mock Dio API call - Services", () async {
        var baseUrl = mockBase;
        var dio = new Dio()
          ..options = BaseOptions(baseUrl: baseUrl)
          ..httpClientAdapter = ParishEndpointAdapter();

        const firstLink = "https://api.vost.pt/v1/parishes?page=1";
        const lastLink = "https://api.vost.pt/v1/parishes?page=3092";
        const nextLink = "https://api.vost.pt/v1/parishes?page=2";
        const type = "parishes";
        const id = "3086";
        const code = "480106";
        const name = "LOMBA";
        const createdDate = "2019-07-02 13:31:18";
        const updatedDate = "2019-07-02 13:31:18";
        const selfLink = "https://api.vost.pt/v1/parishes/3086";
        const items = 1;
        const total = 3092;

        var endpoints = ParishEndpoints(dio);
        var service = ParishService(endpoints);

        var parishes = await service.getParishes().first;

        expect(parishes.links.first, firstLink);
        expect(parishes.links.last, lastLink);
        expect(parishes.links.next, nextLink);
        expect(parishes.meta.items, items);
        expect(parishes.meta.total, total);
        expect(parishes.data[0].type, type);
        expect(parishes.data[0].id, id);
        expect(parishes.data[0].attributes.code, code);
        expect(parishes.data[0].attributes.name, name);
        expect(parishes.data[0].attributes.createdAt, createdDate);
        expect(parishes.data[0].attributes.updatedAt, updatedDate);
        expect(parishes.data[0].links.self, selfLink);
      });

      test("Mock Dio API call - Manager", () async {
        var baseUrl = mockBase;
        var dio = new Dio()
          ..options = BaseOptions(baseUrl: baseUrl)
          ..httpClientAdapter = ParishEndpointAdapter();

        const firstLink = "https://api.vost.pt/v1/parishes?page=1";
        const lastLink = "https://api.vost.pt/v1/parishes?page=3092";
        const nextLink = "https://api.vost.pt/v1/parishes?page=2";
        const type = "parishes";
        const id = "3086";
        const code = "480106";
        const name = "LOMBA";
        const createdDate = "2019-07-02 13:31:18";
        const updatedDate = "2019-07-02 13:31:18";
        const selfLink = "https://api.vost.pt/v1/parishes/3086";
        const items = 1;
        const total = 3092;

        var endpoints = ParishEndpoints(dio);
        var service = ParishService(endpoints);
        var attribute = AttributeResponseMapper();
        var linkMapper = LinkResponseMapper();
        var parishMapper = DataResponseMapper(attribute, linkMapper);
        var metaMapper = MetaResponseMapper();
        var mapper =
            BaseParishResponseMapper(linkMapper, metaMapper, parishMapper);
        var manager = ParishManager(service, mapper);

        var parishes = await manager.getParishes().first;

        expect(parishes.links.first, firstLink);
        expect(parishes.links.last, lastLink);
        expect(parishes.links.next, nextLink);
        expect(parishes.meta.items, items);
        expect(parishes.meta.total, total);
        expect(parishes.data[0].type, type);
        expect(parishes.data[0].id, id);
        expect(parishes.data[0].attributes.code, code);
        expect(parishes.data[0].attributes.name, name);
        expect(parishes.data[0].attributes.createdAt, createdDate);
        expect(parishes.data[0].attributes.updatedAt, updatedDate);
        expect(parishes.data[0].links.self, selfLink);
      });
      //endregion
    });
  });
  //endregion
}
