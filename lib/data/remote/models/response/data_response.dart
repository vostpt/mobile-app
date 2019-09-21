import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';
import 'package:vost/data/remote/models/response/relationship_response.dart';

import 'attribute_response.dart';
import 'link_response.dart';

part 'data_response.g.dart';

abstract class DataResponse
    implements
        Built<DataResponse, DataResponseBuilder>,
        SerializedModel<DataResponse> {
  DataResponse._();

  static Serializer<DataResponse> get serializer => _$dataResponseSerializer;

  String get type;

  String get id;

  @nullable AttributeResponse get attributes;

  @nullable LinkResponse get links;

  @nullable BuiltList<RelationshipResponse> get relationships;

  factory DataResponse([updates(DataResponseBuilder b)]) = _$DataResponse;
}
