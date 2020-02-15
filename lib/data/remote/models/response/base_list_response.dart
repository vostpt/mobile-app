import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';
import 'package:vost/data/remote/models/serializers/serializers.dart';

import 'data_response.dart';
import 'link_response.dart';
import 'meta_response.dart';

part 'base_list_response.g.dart';

abstract class BaseListResponse
    implements
        Built<BaseListResponse, BaseListResponseBuilder>,
        SerializedModel<BaseListResponse> {
  BaseListResponse._();

  static Serializer<BaseListResponse> get serializer =>
      _$baseListResponseSerializer;

  LinkResponse get links;
  MetaResponse get meta;
  @nullable
  BuiltList<DataResponse> get data;
  @nullable
  BuiltList<DataResponse> get included;

  static BaseListResponse fromJson(json) {
    return standardSerializers.deserializeWith(
        BaseListResponse.serializer, jsonDecode(json));
  }

  factory BaseListResponse([updates(BaseListResponseBuilder b)]) =
      _$BaseListResponse;
}
