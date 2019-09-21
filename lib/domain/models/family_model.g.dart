// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FamilyModel extends FamilyModel {
  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final LinkModel links;

  factory _$FamilyModel([void Function(FamilyModelBuilder) updates]) =>
      (new FamilyModelBuilder()..update(updates)).build();

  _$FamilyModel._({this.id, this.name, this.code, this.links}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('FamilyModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('FamilyModel', 'name');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('FamilyModel', 'code');
    }
    if (links == null) {
      throw new BuiltValueNullFieldError('FamilyModel', 'links');
    }
  }

  @override
  FamilyModel rebuild(void Function(FamilyModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FamilyModelBuilder toBuilder() => new FamilyModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FamilyModel &&
        id == other.id &&
        name == other.name &&
        code == other.code &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), name.hashCode), code.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FamilyModel')
          ..add('id', id)
          ..add('name', name)
          ..add('code', code)
          ..add('links', links))
        .toString();
  }
}

class FamilyModelBuilder implements Builder<FamilyModel, FamilyModelBuilder> {
  _$FamilyModel _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  LinkModelBuilder _links;
  LinkModelBuilder get links => _$this._links ??= new LinkModelBuilder();
  set links(LinkModelBuilder links) => _$this._links = links;

  FamilyModelBuilder();

  FamilyModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _code = _$v.code;
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FamilyModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FamilyModel;
  }

  @override
  void update(void Function(FamilyModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FamilyModel build() {
    _$FamilyModel _$result;
    try {
      _$result = _$v ??
          new _$FamilyModel._(
              id: id, name: name, code: code, links: links.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FamilyModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
