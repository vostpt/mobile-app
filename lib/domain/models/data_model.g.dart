// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DataModel> _$dataModelSerializer = new _$DataModelSerializer();

class _$DataModelSerializer implements StructuredSerializer<DataModel> {
  @override
  final Iterable<Type> types = const [DataModel, _$DataModel];
  @override
  final String wireName = 'DataModel';

  @override
  Iterable serialize(Serializers serializers, DataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'attributes',
      serializers.serialize(object.attributes,
          specifiedType: const FullType(AttributeModel)),
      'links',
      serializers.serialize(object.links,
          specifiedType: const FullType(LinkModel)),
    ];

    return result;
  }

  @override
  DataModel deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataModelBuilder();

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
              specifiedType: const FullType(AttributeModel)) as AttributeModel);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(LinkModel)) as LinkModel);
          break;
      }
    }

    return result.build();
  }
}

class _$DataModel extends DataModel {
  @override
  final String type;
  @override
  final String id;
  @override
  final AttributeModel attributes;
  @override
  final LinkModel links;

  factory _$DataModel([void Function(DataModelBuilder) updates]) =>
      (new DataModelBuilder()..update(updates)).build();

  _$DataModel._({this.type, this.id, this.attributes, this.links}) : super._() {
    if (type == null) {
      throw new BuiltValueNullFieldError('DataModel', 'type');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('DataModel', 'id');
    }
    if (attributes == null) {
      throw new BuiltValueNullFieldError('DataModel', 'attributes');
    }
    if (links == null) {
      throw new BuiltValueNullFieldError('DataModel', 'links');
    }
  }

  @override
  DataModel rebuild(void Function(DataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataModelBuilder toBuilder() => new DataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataModel &&
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
    return (newBuiltValueToStringHelper('DataModel')
          ..add('type', type)
          ..add('id', id)
          ..add('attributes', attributes)
          ..add('links', links))
        .toString();
  }
}

class DataModelBuilder implements Builder<DataModel, DataModelBuilder> {
  _$DataModel _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  AttributeModelBuilder _attributes;
  AttributeModelBuilder get attributes =>
      _$this._attributes ??= new AttributeModelBuilder();
  set attributes(AttributeModelBuilder attributes) =>
      _$this._attributes = attributes;

  LinkModelBuilder _links;
  LinkModelBuilder get links => _$this._links ??= new LinkModelBuilder();
  set links(LinkModelBuilder links) => _$this._links = links;

  DataModelBuilder();

  DataModelBuilder get _$this {
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
  void replace(DataModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataModel;
  }

  @override
  void update(void Function(DataModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataModel build() {
    _$DataModel _$result;
    try {
      _$result = _$v ??
          new _$DataModel._(
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
            'DataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
