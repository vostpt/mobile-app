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
  final int code;
  @override
  final String startedAt;
  @override
  final String endedAt;
  @override
  final String updatedAt;
  @override
  final LatLng coordinates;
  @override
  final LinkModel links;
  @override
  final OnSiteMeansModel onSiteMeans;
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
      this.startedAt,
      this.endedAt,
      this.updatedAt,
      this.coordinates,
      this.links,
      this.onSiteMeans,
      this.type,
      this.status,
      this.parish})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('OccurrenceModel', 'id');
    }
    if (coordinates == null) {
      throw new BuiltValueNullFieldError('OccurrenceModel', 'coordinates');
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
        startedAt == other.startedAt &&
        endedAt == other.endedAt &&
        updatedAt == other.updatedAt &&
        coordinates == other.coordinates &&
        links == other.links &&
        onSiteMeans == other.onSiteMeans &&
        type == other.type &&
        status == other.status &&
        parish == other.parish;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                name.hashCode),
                                            code.hashCode),
                                        startedAt.hashCode),
                                    endedAt.hashCode),
                                updatedAt.hashCode),
                            coordinates.hashCode),
                        links.hashCode),
                    onSiteMeans.hashCode),
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
          ..add('startedAt', startedAt)
          ..add('endedAt', endedAt)
          ..add('updatedAt', updatedAt)
          ..add('coordinates', coordinates)
          ..add('links', links)
          ..add('onSiteMeans', onSiteMeans)
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

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _startedAt;
  String get startedAt => _$this._startedAt;
  set startedAt(String startedAt) => _$this._startedAt = startedAt;

  String _endedAt;
  String get endedAt => _$this._endedAt;
  set endedAt(String endedAt) => _$this._endedAt = endedAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  LatLng _coordinates;
  LatLng get coordinates => _$this._coordinates;
  set coordinates(LatLng coordinates) => _$this._coordinates = coordinates;

  LinkModelBuilder _links;
  LinkModelBuilder get links => _$this._links ??= new LinkModelBuilder();
  set links(LinkModelBuilder links) => _$this._links = links;

  OnSiteMeansModelBuilder _onSiteMeans;
  OnSiteMeansModelBuilder get onSiteMeans =>
      _$this._onSiteMeans ??= new OnSiteMeansModelBuilder();
  set onSiteMeans(OnSiteMeansModelBuilder onSiteMeans) =>
      _$this._onSiteMeans = onSiteMeans;

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
      _startedAt = _$v.startedAt;
      _endedAt = _$v.endedAt;
      _updatedAt = _$v.updatedAt;
      _coordinates = _$v.coordinates;
      _links = _$v.links?.toBuilder();
      _onSiteMeans = _$v.onSiteMeans?.toBuilder();
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
              startedAt: startedAt,
              endedAt: endedAt,
              updatedAt: updatedAt,
              coordinates: coordinates,
              links: links.build(),
              onSiteMeans: _onSiteMeans?.build(),
              type: _type?.build(),
              status: _status?.build(),
              parish: _parish?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
        _$failedField = 'onSiteMeans';
        _onSiteMeans?.build();
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
