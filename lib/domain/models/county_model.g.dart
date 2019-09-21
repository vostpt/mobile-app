// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'county_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CountyModel extends CountyModel {
  @override
  final String id;
  @override
  final String name;
  @override
  final int code;
  @override
  final LinkModel links;
  @override
  final DistrictModel district;

  factory _$CountyModel([void Function(CountyModelBuilder) updates]) =>
      (new CountyModelBuilder()..update(updates)).build();

  _$CountyModel._({this.id, this.name, this.code, this.links, this.district})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('CountyModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('CountyModel', 'name');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('CountyModel', 'code');
    }
    if (links == null) {
      throw new BuiltValueNullFieldError('CountyModel', 'links');
    }
  }

  @override
  CountyModel rebuild(void Function(CountyModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountyModelBuilder toBuilder() => new CountyModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountyModel &&
        id == other.id &&
        name == other.name &&
        code == other.code &&
        links == other.links &&
        district == other.district;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), code.hashCode),
            links.hashCode),
        district.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountyModel')
          ..add('id', id)
          ..add('name', name)
          ..add('code', code)
          ..add('links', links)
          ..add('district', district))
        .toString();
  }
}

class CountyModelBuilder implements Builder<CountyModel, CountyModelBuilder> {
  _$CountyModel _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  LinkModelBuilder _links;
  LinkModelBuilder get links => _$this._links ??= new LinkModelBuilder();
  set links(LinkModelBuilder links) => _$this._links = links;

  DistrictModelBuilder _district;
  DistrictModelBuilder get district =>
      _$this._district ??= new DistrictModelBuilder();
  set district(DistrictModelBuilder district) => _$this._district = district;

  CountyModelBuilder();

  CountyModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _code = _$v.code;
      _links = _$v.links?.toBuilder();
      _district = _$v.district?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountyModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CountyModel;
  }

  @override
  void update(void Function(CountyModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountyModel build() {
    _$CountyModel _$result;
    try {
      _$result = _$v ??
          new _$CountyModel._(
              id: id,
              name: name,
              code: code,
              links: links.build(),
              district: _district?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
        _$failedField = 'district';
        _district?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountyModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
