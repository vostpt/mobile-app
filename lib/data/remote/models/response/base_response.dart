import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

import 'link_response.dart';
import 'meta_response.dart';

part 'base_response.g.dart';

abstract class BaseResponse<T> implements Built<BaseResponse<T>, BaseResponseBuilder<T>>, SerializedModel<BaseResponse<T>> {
  BaseResponse._();

  static Serializer<BaseResponse> get serializer => _$baseResponseSerializer;

  LinkResponse get links;
  MetaResponse get meta;
  T get data;

  factory BaseResponse([updates(BaseResponseBuilder<T> b)]) = _$BaseResponse<T>;
}