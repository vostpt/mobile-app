import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';
import 'package:vost/data/remote/models/response/parish_link_response.dart';
import 'package:vost/data/remote/models/serializers/serializers.dart';

import 'attribute_response.dart';
import 'base_list_response.dart';

part 'parish_response.g.dart';

abstract class ParishResponse
    implements
        Built<ParishResponse, ParishResponseBuilder>,
        SerializedModel<ParishResponse> {
  ParishResponse._();

  static Serializer<ParishResponse> get serializer =>
      _$parishResponseSerializer;

  String get type;

  String get id;

  AttributeResponse get attributes;

  ParishLinkResponse get links;

  static BaseListResponse<ParishResponse> fromJson(String jsonString) {
    return serializers.deserialize(json.decode(jsonString),
        specifiedType: FullType(BaseListResponse, const [
          const FullType(ParishResponse)
        ]));
  }

  factory ParishResponse([updates(ParishResponseBuilder b)]) = _$ParishResponse;
}
