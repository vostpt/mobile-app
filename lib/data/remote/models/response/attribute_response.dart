import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

part 'attribute_response.g.dart';

abstract class AttributeResponse implements Built<AttributeResponse, AttributeResponseBuilder>, SerializedModel<AttributeResponse> {
  AttributeResponse._();

  static Serializer<AttributeResponse> get serializer => _$attributeResponseSerializer;

  String get code;
  String get name;
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;

  factory AttributeResponse([updates(AttributeResponseBuilder b)]) = _$AttributeResponse;
}