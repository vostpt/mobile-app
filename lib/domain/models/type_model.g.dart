// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypeModel extends TypeModel {
  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final LinkModel links;
  @override
  final String speciesId;
  @override
  final String speciesName;
  @override
  final String speciesCode;
  @override
  final LinkModel speciesLinks;

  factory _$TypeModel([void Function(TypeModelBuilder) updates]) =>
      (new TypeModelBuilder()..update(updates)).build();

  _$TypeModel._(
      {this.id,
      this.name,
      this.code,
      this.links,
      this.speciesId,
      this.speciesName,
      this.speciesCode,
      this.speciesLinks})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('TypeModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('TypeModel', 'name');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('TypeModel', 'code');
    }
    if (links == null) {
      throw new BuiltValueNullFieldError('TypeModel', 'links');
    }
    if (speciesId == null) {
      throw new BuiltValueNullFieldError('TypeModel', 'speciesId');
    }
    if (speciesName == null) {
      throw new BuiltValueNullFieldError('TypeModel', 'speciesName');
    }
    if (speciesCode == null) {
      throw new BuiltValueNullFieldError('TypeModel', 'speciesCode');
    }
    if (speciesLinks == null) {
      throw new BuiltValueNullFieldError('TypeModel', 'speciesLinks');
    }
  }

  @override
  TypeModel rebuild(void Function(TypeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeModelBuilder toBuilder() => new TypeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeModel &&
        id == other.id &&
        name == other.name &&
        code == other.code &&
        links == other.links &&
        speciesId == other.speciesId &&
        speciesName == other.speciesName &&
        speciesCode == other.speciesCode &&
        speciesLinks == other.speciesLinks;
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
                    speciesId.hashCode),
                speciesName.hashCode),
            speciesCode.hashCode),
        speciesLinks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TypeModel')
          ..add('id', id)
          ..add('name', name)
          ..add('code', code)
          ..add('links', links)
          ..add('speciesId', speciesId)
          ..add('speciesName', speciesName)
          ..add('speciesCode', speciesCode)
          ..add('speciesLinks', speciesLinks))
        .toString();
  }
}

class TypeModelBuilder implements Builder<TypeModel, TypeModelBuilder> {
  _$TypeModel _$v;

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

  String _speciesId;
  String get speciesId => _$this._speciesId;
  set speciesId(String speciesId) => _$this._speciesId = speciesId;

  String _speciesName;
  String get speciesName => _$this._speciesName;
  set speciesName(String speciesName) => _$this._speciesName = speciesName;

  String _speciesCode;
  String get speciesCode => _$this._speciesCode;
  set speciesCode(String speciesCode) => _$this._speciesCode = speciesCode;

  LinkModelBuilder _speciesLinks;
  LinkModelBuilder get speciesLinks =>
      _$this._speciesLinks ??= new LinkModelBuilder();
  set speciesLinks(LinkModelBuilder speciesLinks) =>
      _$this._speciesLinks = speciesLinks;

  TypeModelBuilder();

  TypeModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _code = _$v.code;
      _links = _$v.links?.toBuilder();
      _speciesId = _$v.speciesId;
      _speciesName = _$v.speciesName;
      _speciesCode = _$v.speciesCode;
      _speciesLinks = _$v.speciesLinks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TypeModel;
  }

  @override
  void update(void Function(TypeModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TypeModel build() {
    _$TypeModel _$result;
    try {
      _$result = _$v ??
          new _$TypeModel._(
              id: id,
              name: name,
              code: code,
              links: links.build(),
              speciesId: speciesId,
              speciesName: speciesName,
              speciesCode: speciesCode,
              speciesLinks: speciesLinks.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        links.build();

        _$failedField = 'speciesLinks';
        speciesLinks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TypeModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
