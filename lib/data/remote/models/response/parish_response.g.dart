// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parish_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParishResponse> _$parishResponseSerializer =
    new _$ParishResponseSerializer();

class _$ParishResponseSerializer
    implements StructuredSerializer<ParishResponse> {
  @override
  final Iterable<Type> types = const [ParishResponse, _$ParishResponse];
  @override
  final String wireName = 'ParishResponse';

  @override
  Iterable serialize(Serializers serializers, ParishResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'attributes',
      serializers.serialize(object.attributes,
          specifiedType: const FullType(AttributeResponse)),
      'links',
      serializers.serialize(object.links,
          specifiedType: const FullType(LinkResponse)),
    ];

    return result;
  }

  @override
  ParishResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParishResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'attributes':
          result.attributes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AttributeResponse))
              as AttributeResponse);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(LinkResponse)) as LinkResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ParishResponse extends ParishResponse {
  @override
  final String type;
  @override
  final String id;
  @override
  final AttributeResponse attributes;
  @override
  final LinkResponse links;

  factory _$ParishResponse([void Function(ParishResponseBuilder) updates]) =>
      (new ParishResponseBuilder()..update(updates)).build();

  _$ParishResponse._({this.type, this.id, this.attributes, this.links})
      : super._() {
    if (type == null) {
      throw new BuiltValueNullFieldError('ParishResponse', 'type');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('ParishResponse', 'id');
    }
    if (attributes == null) {
      throw new BuiltValueNullFieldError('ParishResponse', 'attributes');
    }
    if (links == null) {
      throw new BuiltValueNullFieldError('ParishResponse', 'links');
    }
  }

  @override
  ParishResponse rebuild(void Function(ParishResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParishResponseBuilder toBuilder() =>
      new ParishResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParishResponse &&
        type == other.type &&
        id == other.id &&
        attributes == other.attributes &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, type.hashCode), id.hashCode), attributes.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParishResponse')
          ..add('type', type)
          ..add('id', id)
          ..add('attributes', attributes)
          ..add('links', links))
        .toString();
  }
}

class ParishResponseBuilder
    implements Builder<ParishResponse, ParishResponseBuilder> {
  _$ParishResponse _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  AttributeResponseBuilder _attributes;
  AttributeResponseBuilder get attributes =>
      _$this._attributes ??= new AttributeResponseBuilder();
  set attributes(AttributeResponseBuilder attributes) =>
      _$this._attributes = attributes;

  LinkResponseBuilder _links;
  LinkResponseBuilder get links => _$this._links ??= new LinkResponseBuilder();
  set links(LinkResponseBuilder links) => _$this._links = links;

  ParishResponseBuilder();

  ParishResponseBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _id = _$v.id;
      _attributes = _$v.attributes?.toBuilder();
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParishResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ParishResponse;
  }

  @override
  void update(void Function(ParishResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParishResponse build() {
    _$ParishResponse _$result;
    try {
      _$result = _$v ??
          new _$ParishResponse._(
              type: type,
              id: id,
              attributes: attributes.build(),
              links: links.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attributes';
        attributes.build();
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ParishResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
