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
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updated_at',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
    ];

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
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
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
  final String createdAt;
  @override
  final String updatedAt;

  factory _$AttributeResponse(
          [void Function(AttributeResponseBuilder) updates]) =>
      (new AttributeResponseBuilder()..update(updates)).build();

  _$AttributeResponse._({this.code, this.name, this.createdAt, this.updatedAt})
      : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('AttributeResponse', 'code');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('AttributeResponse', 'name');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('AttributeResponse', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('AttributeResponse', 'updatedAt');
    }
  }

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
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, code.hashCode), name.hashCode), createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttributeResponse')
          ..add('code', code)
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
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

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  AttributeResponseBuilder();

  AttributeResponseBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _name = _$v.name;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
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
            code: code, name: name, createdAt: createdAt, updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
