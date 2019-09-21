// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occurrence_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OccurrenceModel extends OccurrenceModel {
  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final LinkModel links;
  @override
  final TypeModel type;
  @override
  final StatusModel status;
  @override
  final ParishModel parish;

  factory _$OccurrenceModel([void Function(OccurrenceModelBuilder) updates]) =>
      (new OccurrenceModelBuilder()..update(updates)).build();

  _$OccurrenceModel._(
      {this.id,
      this.name,
      this.code,
      this.links,
      this.type,
      this.status,
      this.parish})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('OccurrenceModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('OccurrenceModel', 'name');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('OccurrenceModel', 'code');
    }
    if (links == null) {
      throw new BuiltValueNullFieldError('OccurrenceModel', 'links');
    }
  }

  @override
  OccurrenceModel rebuild(void Function(OccurrenceModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OccurrenceModelBuilder toBuilder() =>
      new OccurrenceModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OccurrenceModel &&
        id == other.id &&
        name == other.name &&
        code == other.code &&
        links == other.links &&
        type == other.type &&
        status == other.status &&
        parish == other.parish;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, id.hashCode), name.hashCode), code.hashCode),
                    links.hashCode),
                type.hashCode),
            status.hashCode),
        parish.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OccurrenceModel')
          ..add('id', id)
          ..add('name', name)
          ..add('code', code)
          ..add('links', links)
          ..add('type', type)
          ..add('status', status)
          ..add('parish', parish))
        .toString();
  }
}

class OccurrenceModelBuilder
    implements Builder<OccurrenceModel, OccurrenceModelBuilder> {
  _$OccurrenceModel _$v;

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

  TypeModelBuilder _type;
  TypeModelBuilder get type => _$this._type ??= new TypeModelBuilder();
  set type(TypeModelBuilder type) => _$this._type = type;

  StatusModelBuilder _status;
  StatusModelBuilder get status => _$this._status ??= new StatusModelBuilder();
  set status(StatusModelBuilder status) => _$this._status = status;

  ParishModelBuilder _parish;
  ParishModelBuilder get parish => _$this._parish ??= new ParishModelBuilder();
  set parish(ParishModelBuilder parish) => _$this._parish = parish;

  OccurrenceModelBuilder();

  OccurrenceModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _code = _$v.code;
      _links = _$v.links?.toBuilder();
      _type = _$v.type?.toBuilder();
      _status = _$v.status?.toBuilder();
      _parish = _$v.parish?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OccurrenceModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OccurrenceModel;
  }

  @override
  void update(void Function(OccurrenceModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OccurrenceModel build() {
    _$OccurrenceModel _$result;
    try {
      _$result = _$v ??
          new _$OccurrenceModel._(
              id: id,
              name: name,
              code: code,
              links: links.build(),
              type: _type?.build(),
              status: _status?.build(),
              parish: _parish?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
        _$failedField = 'type';
        _type?.build();
        _$failedField = 'status';
        _status?.build();
        _$failedField = 'parish';
        _parish?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OccurrenceModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
