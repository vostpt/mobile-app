// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeModel extends AttributeModel {
  @override
  final String code;
  @override
  final String name;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$AttributeModel([void Function(AttributeModelBuilder) updates]) =>
      (new AttributeModelBuilder()..update(updates)).build();

  _$AttributeModel._({this.code, this.name, this.createdAt, this.updatedAt})
      : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('AttributeModel', 'code');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('AttributeModel', 'name');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('AttributeModel', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('AttributeModel', 'updatedAt');
    }
  }

  @override
  AttributeModel rebuild(void Function(AttributeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeModelBuilder toBuilder() =>
      new AttributeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeModel &&
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
    return (newBuiltValueToStringHelper('AttributeModel')
          ..add('code', code)
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AttributeModelBuilder
    implements Builder<AttributeModel, AttributeModelBuilder> {
  _$AttributeModel _$v;

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

  AttributeModelBuilder();

  AttributeModelBuilder get _$this {
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
  void replace(AttributeModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttributeModel;
  }

  @override
  void update(void Function(AttributeModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AttributeModel build() {
    final _$result = _$v ??
        new _$AttributeModel._(
            code: code, name: name, createdAt: createdAt, updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
