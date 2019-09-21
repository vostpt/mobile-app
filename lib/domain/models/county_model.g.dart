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
  final String code;
  @override
  final LinkModel links;
  @override
  final String districtId;
  @override
  final String districtName;
  @override
  final String districtCode;
  @override
  final LinkModel districtLinks;

  factory _$CountyModel([void Function(CountyModelBuilder) updates]) =>
      (new CountyModelBuilder()..update(updates)).build();

  _$CountyModel._(
      {this.id,
      this.name,
      this.code,
      this.links,
      this.districtId,
      this.districtName,
      this.districtCode,
      this.districtLinks})
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
    if (districtId == null) {
      throw new BuiltValueNullFieldError('CountyModel', 'districtId');
    }
    if (districtName == null) {
      throw new BuiltValueNullFieldError('CountyModel', 'districtName');
    }
    if (districtCode == null) {
      throw new BuiltValueNullFieldError('CountyModel', 'districtCode');
    }
    if (districtLinks == null) {
      throw new BuiltValueNullFieldError('CountyModel', 'districtLinks');
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
        districtId == other.districtId &&
        districtName == other.districtName &&
        districtCode == other.districtCode &&
        districtLinks == other.districtLinks;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            code.hashCode),
                        links.hashCode),
                    districtId.hashCode),
                districtName.hashCode),
            districtCode.hashCode),
        districtLinks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountyModel')
          ..add('id', id)
          ..add('name', name)
          ..add('code', code)
          ..add('links', links)
          ..add('districtId', districtId)
          ..add('districtName', districtName)
          ..add('districtCode', districtCode)
          ..add('districtLinks', districtLinks))
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

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  LinkModelBuilder _links;
  LinkModelBuilder get links => _$this._links ??= new LinkModelBuilder();
  set links(LinkModelBuilder links) => _$this._links = links;

  String _districtId;
  String get districtId => _$this._districtId;
  set districtId(String districtId) => _$this._districtId = districtId;

  String _districtName;
  String get districtName => _$this._districtName;
  set districtName(String districtName) => _$this._districtName = districtName;

  String _districtCode;
  String get districtCode => _$this._districtCode;
  set districtCode(String districtCode) => _$this._districtCode = districtCode;

  LinkModelBuilder _districtLinks;
  LinkModelBuilder get districtLinks =>
      _$this._districtLinks ??= new LinkModelBuilder();
  set districtLinks(LinkModelBuilder districtLinks) =>
      _$this._districtLinks = districtLinks;

  CountyModelBuilder();

  CountyModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _code = _$v.code;
      _links = _$v.links?.toBuilder();
      _districtId = _$v.districtId;
      _districtName = _$v.districtName;
      _districtCode = _$v.districtCode;
      _districtLinks = _$v.districtLinks?.toBuilder();
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
              districtId: districtId,
              districtName: districtName,
              districtCode: districtCode,
              districtLinks: districtLinks.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        links.build();

        _$failedField = 'districtLinks';
        districtLinks.build();
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
