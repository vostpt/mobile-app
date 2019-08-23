// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AttributeResponse> _$attributeResponseSerializer =
    new _$AttributeResponseSerializer();

class _$AttributeResponseSerializer
    implements StructuredSerializer<AttributeResponse> {
  @override
  final Iterable<Type> types = const [AttributeResponse, _$AttributeResponse];
  @override
  final String wireName = 'AttributeResponse';

  @override
  Iterable serialize(Serializers serializers, AttributeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
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

    return result;
  }

  @override
  AttributeResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttributeResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
      }
    }

    return result.build();
  }
}

class _$AttributeResponse extends AttributeResponse {
  @override
  final String code;
  @override
  final String name;
  @override
  final String locality;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String endedAt;
  @override
  final String startedAt;

  factory _$AttributeResponse(
          [void Function(AttributeResponseBuilder) updates]) =>
      (new AttributeResponseBuilder()..update(updates)).build();

  _$AttributeResponse._(
      {this.code,
      this.name,
      this.locality,
      this.longitude,
      this.latitude,
      this.createdAt,
      this.updatedAt,
      this.endedAt,
      this.startedAt})
      : super._();

  @override
  AttributeResponse rebuild(void Function(AttributeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeResponseBuilder toBuilder() =>
      new AttributeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeResponse &&
        code == other.code &&
        name == other.name &&
        locality == other.locality &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        endedAt == other.endedAt &&
        startedAt == other.startedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, code.hashCode), name.hashCode),
                                locality.hashCode),
                            longitude.hashCode),
                        latitude.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            endedAt.hashCode),
        startedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttributeResponse')
          ..add('code', code)
          ..add('name', name)
          ..add('locality', locality)
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('endedAt', endedAt)
          ..add('startedAt', startedAt))
        .toString();
  }
}

class AttributeResponseBuilder
    implements Builder<AttributeResponse, AttributeResponseBuilder> {
  _$AttributeResponse _$v;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _locality;
  String get locality => _$this._locality;
  set locality(String locality) => _$this._locality = locality;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _endedAt;
  String get endedAt => _$this._endedAt;
  set endedAt(String endedAt) => _$this._endedAt = endedAt;

  String _startedAt;
  String get startedAt => _$this._startedAt;
  set startedAt(String startedAt) => _$this._startedAt = startedAt;

  AttributeResponseBuilder();

  AttributeResponseBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _name = _$v.name;
      _locality = _$v.locality;
      _longitude = _$v.longitude;
      _latitude = _$v.latitude;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _endedAt = _$v.endedAt;
      _startedAt = _$v.startedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttributeResponse;
  }

  @override
  void update(void Function(AttributeResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AttributeResponse build() {
    final _$result = _$v ??
        new _$AttributeResponse._(
            code: code,
            name: name,
            locality: locality,
            longitude: longitude,
            latitude: latitude,
            createdAt: createdAt,
            updatedAt: updatedAt,
            endedAt: endedAt,
            startedAt: startedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
