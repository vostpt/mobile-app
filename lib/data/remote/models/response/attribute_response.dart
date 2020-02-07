import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

part 'attribute_response.g.dart';

abstract class AttributeResponse
    implements
        Built<AttributeResponse, AttributeResponseBuilder>,
        SerializedModel<AttributeResponse> {
  AttributeResponse._();

  @BuiltValueSerializer(custom: true)
  static Serializer<AttributeResponse> get serializer =>
      AttributeResponseSerializer();

  @nullable
  String get codeString;

  @nullable
  int get codeInt;

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

  @BuiltValueField(wireName: 'remote_id')
  @nullable
  String get remoteId;

  @BuiltValueField(wireName: "ground_assets_involved")
  @nullable
  int get groundAssetsInvolved;

  @BuiltValueField(wireName: "ground_operatives_involved")
  @nullable
  int get groundOperativesInvolved;

  @BuiltValueField(wireName: "aerial_assets_involved")
  @nullable
  int get aerialAssetsInvolved;

  @BuiltValueField(wireName: "aerial_operatives_involved")
  @nullable
  int get aerialOperativesInvolved;

  factory AttributeResponse([updates(AttributeResponseBuilder b)]) =
      _$AttributeResponse;
}

class AttributeResponseSerializer
    implements StructuredSerializer<AttributeResponse> {
  @override
  final Iterable<Type> types = const [AttributeResponse, _$AttributeResponse];
  @override
  final String wireName = 'AttributeResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, AttributeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.codeInt != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.codeInt,
            specifiedType: const FullType(int)));
    } else if (object.codeString != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.codeString,
            specifiedType: const FullType(String)));
    }

    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.locality != null) {
      result
        ..add('locality')
        ..add(serializers.serialize(object.locality,
            specifiedType: const FullType(String)));
    }
    if (object.longitude != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(object.longitude,
            specifiedType: const FullType(double)));
    }
    if (object.latitude != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(object.latitude,
            specifiedType: const FullType(double)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.endedAt != null) {
      result
        ..add('ended_at')
        ..add(serializers.serialize(object.endedAt,
            specifiedType: const FullType(String)));
    }
    if (object.startedAt != null) {
      result
        ..add('started_at')
        ..add(serializers.serialize(object.startedAt,
            specifiedType: const FullType(String)));
    }
    if (object.groundAssetsInvolved != null) {
      result
        ..add('ground_assets_involved')
        ..add(serializers.serialize(object.groundAssetsInvolved,
            specifiedType: const FullType(int)));
    }
    if (object.groundOperativesInvolved != null) {
      result
        ..add('ground_operatives_involved')
        ..add(serializers.serialize(object.groundOperativesInvolved,
            specifiedType: const FullType(int)));
    }
    if (object.aerialAssetsInvolved != null) {
      result
        ..add('aerial_assets_involved')
        ..add(serializers.serialize(object.aerialAssetsInvolved,
            specifiedType: const FullType(int)));
    }
    if (object.aerialOperativesInvolved != null) {
      result
        ..add('aerial_operatives_involved')
        ..add(serializers.serialize(object.aerialOperativesInvolved,
            specifiedType: const FullType(int)));
    }
    if (object.remoteId != null) {
      result
        ..add('remote_id')
        ..add(serializers.serialize(object.remoteId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AttributeResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttributeResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          if (value is int) {
            result.codeInt = serializers.deserialize(value,
                specifiedType: const FullType(int)) as int;
          } else {
            result.codeString = serializers.deserialize(value,
                specifiedType: const FullType(String)) as String;
          }

          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locality':
          result.locality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ended_at':
          result.endedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'started_at':
          result.startedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ground_assets_involved':
          result.groundAssetsInvolved = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ground_operatives_involved':
          result.groundOperativesInvolved = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'aerial_assets_involved':
          result.aerialAssetsInvolved = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'aerial_operatives_involved':
          result.aerialOperativesInvolved = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'remote_id':
          result.remoteId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}
