import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

part 'attribute_response.g.dart';

abstract class AttributeResponse
    implements
        Built<AttributeResponse, AttributeResponseBuilder>,
        SerializedModel<AttributeResponse> {
  AttributeResponse._();

  static Serializer<AttributeResponse> get serializer =>
      _$attributeResponseSerializer;

  @nullable
  String get code;

  @nullable
  String get name;

  @nullable
  String get locality;

  @nullable
  double get longitude;

  @nullable
  double get latitude;

  @BuiltValueField(wireName: 'created_at')
  @nullable
  String get createdAt;

  @BuiltValueField(wireName: 'updated_at')
  @nullable
  String get updatedAt;

  @BuiltValueField(wireName: 'ended_at')
  @nullable
  String get endedAt;

  @BuiltValueField(wireName: 'started_at')
  @nullable
  String get startedAt;

  factory AttributeResponse([updates(AttributeResponseBuilder b)]) =
      _$AttributeResponse;
}
