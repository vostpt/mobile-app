// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DataResponse> _$dataResponseSerializer =
    new _$DataResponseSerializer();

class _$DataResponseSerializer implements StructuredSerializer<DataResponse> {
  @override
  final Iterable<Type> types = const [DataResponse, _$DataResponse];
  @override
  final String wireName = 'DataResponse';

  @override
  Iterable serialize(Serializers serializers, DataResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    if (object.attributes != null) {
      result
        ..add('attributes')
        ..add(serializers.serialize(object.attributes,
            specifiedType: const FullType(AttributeResponse)));
    }
    if (object.links != null) {
      result
        ..add('links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(LinkResponse)));
    }
    if (object.relationships != null) {
      result
        ..add('relationships')
        ..add(serializers.serialize(object.relationships,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RelationshipResponse)])));
    }

    return result;
  }

  @override
  DataResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataResponseBuilder();

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
        case 'relationships':
          result.relationships.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RelationshipResponse)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$DataResponse extends DataResponse {
  @override
  final String type;
  @override
  final String id;
  @override
  final AttributeResponse attributes;
  @override
  final LinkResponse links;
  @override
  final BuiltList<RelationshipResponse> relationships;

  factory _$DataResponse([void Function(DataResponseBuilder) updates]) =>
      (new DataResponseBuilder()..update(updates)).build();

  _$DataResponse._(
      {this.type, this.id, this.attributes, this.links, this.relationships})
      : super._() {
    if (type == null) {
      throw new BuiltValueNullFieldError('DataResponse', 'type');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('DataResponse', 'id');
    }
  }

  @override
  DataResponse rebuild(void Function(DataResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataResponseBuilder toBuilder() => new DataResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataResponse &&
        type == other.type &&
        id == other.id &&
        attributes == other.attributes &&
        links == other.links &&
        relationships == other.relationships;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, type.hashCode), id.hashCode), attributes.hashCode),
            links.hashCode),
        relationships.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataResponse')
          ..add('type', type)
          ..add('id', id)
          ..add('attributes', attributes)
          ..add('links', links)
          ..add('relationships', relationships))
        .toString();
  }
}

class DataResponseBuilder
    implements Builder<DataResponse, DataResponseBuilder> {
  _$DataResponse _$v;

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

  ListBuilder<RelationshipResponse> _relationships;
  ListBuilder<RelationshipResponse> get relationships =>
      _$this._relationships ??= new ListBuilder<RelationshipResponse>();
  set relationships(ListBuilder<RelationshipResponse> relationships) =>
      _$this._relationships = relationships;

  DataResponseBuilder();

  DataResponseBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _id = _$v.id;
      _attributes = _$v.attributes?.toBuilder();
      _links = _$v.links?.toBuilder();
      _relationships = _$v.relationships?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataResponse;
  }

  @override
  void update(void Function(DataResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataResponse build() {
    _$DataResponse _$result;
    try {
      _$result = _$v ??
          new _$DataResponse._(
              type: type,
              id: id,
              attributes: _attributes?.build(),
              links: _links?.build(),
              relationships: _relationships?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'relationships';
        _relationships?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
