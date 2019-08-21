import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

import 'link_response.dart';
import 'meta_response.dart';

part 'base_list_response.g.dart';

abstract class BaseListResponse<T> implements Built<BaseListResponse<T>, BaseListResponseBuilder<T>>, SerializedModel<BaseListResponse<T>> {
  BaseListResponse._();

  static Serializer<BaseListResponse> get serializer => _$baseListResponseSerializer;

  LinkResponse get links;
  MetaResponse get meta;
  BuiltList<T> get data;

  factory BaseListResponse([updates(BaseListResponseBuilder<T> b)]) = _$BaseListResponse<T>;
}