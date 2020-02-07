import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';
import 'package:vost/data/remote/models/serializers/serializers.dart';

import 'data_response.dart';
import 'link_response.dart';
import 'meta_response.dart';

part 'base_response.g.dart';

abstract class BaseResponse
    implements
        Built<BaseResponse, BaseResponseBuilder>,
        SerializedModel<BaseResponse> {
  BaseResponse._();

  static Serializer<BaseResponse> get serializer => _$baseResponseSerializer;

  @nullable
  LinkResponse get links;
  @nullable
  MetaResponse get meta;
  DataResponse get data;
  @nullable
  BuiltList<DataResponse> get included;

  static BaseResponse fromJson(String jsonString) {
    return standardSerializers.deserializeWith(
        BaseResponse.serializer, jsonDecode(jsonString));
  }

  factory BaseResponse([updates(BaseResponseBuilder b)]) = _$BaseResponse;
}
