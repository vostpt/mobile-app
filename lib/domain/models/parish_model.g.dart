// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parish_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParishModel extends ParishModel {
  @override
  final String type;
  @override
  final String id;
  @override
  final AttributeModel attributes;
  @override
  final ParishLinkModel links;

  factory _$ParishModel([void Function(ParishModelBuilder) updates]) =>
      (new ParishModelBuilder()..update(updates)).build();

  _$ParishModel._({this.type, this.id, this.attributes, this.links})
      : super._() {
    if (type == null) {
      throw new BuiltValueNullFieldError('ParishModel', 'type');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('ParishModel', 'id');
    }
    if (attributes == null) {
      throw new BuiltValueNullFieldError('ParishModel', 'attributes');
    }
    if (links == null) {
      throw new BuiltValueNullFieldError('ParishModel', 'links');
    }
  }

  @override
  ParishModel rebuild(void Function(ParishModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParishModelBuilder toBuilder() => new ParishModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParishModel &&
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
    return (newBuiltValueToStringHelper('ParishModel')
          ..add('type', type)
          ..add('id', id)
          ..add('attributes', attributes)
          ..add('links', links))
        .toString();
  }
}

class ParishModelBuilder implements Builder<ParishModel, ParishModelBuilder> {
  _$ParishModel _$v;

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

  ParishLinkModelBuilder _links;
  ParishLinkModelBuilder get links =>
      _$this._links ??= new ParishLinkModelBuilder();
  set links(ParishLinkModelBuilder links) => _$this._links = links;

  ParishModelBuilder();

  ParishModelBuilder get _$this {
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
  void replace(ParishModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ParishModel;
  }

  @override
  void update(void Function(ParishModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParishModel build() {
    _$ParishModel _$result;
    try {
      _$result = _$v ??
          new _$ParishModel._(
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
            'ParishModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
