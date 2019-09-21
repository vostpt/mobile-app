// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parish_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParishModel extends ParishModel {
  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  @override
  final int code;
  @override
  final LinkModel links;

  factory _$ParishModel([void Function(ParishModelBuilder) updates]) =>
      (new ParishModelBuilder()..update(updates)).build();

  _$ParishModel._({this.id, this.name, this.type, this.code, this.links})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ParishModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('ParishModel', 'name');
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
        id == other.id &&
        name == other.name &&
        type == other.type &&
        code == other.code &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), type.hashCode),
            code.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParishModel')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('code', code)
          ..add('links', links))
        .toString();
  }
}

class ParishModelBuilder implements Builder<ParishModel, ParishModelBuilder> {
  _$ParishModel _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  LinkModelBuilder _links;
  LinkModelBuilder get links => _$this._links ??= new LinkModelBuilder();
  set links(LinkModelBuilder links) => _$this._links = links;

  ParishModelBuilder();

  ParishModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _type = _$v.type;
      _code = _$v.code;
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
              id: id,
              name: name,
              type: type,
              code: code,
              links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
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
