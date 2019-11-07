// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeResponse extends AttributeResponse {
  @override
  final String codeString;
  @override
  final int codeInt;
  @override
  final String name;
  @override
  final String locality;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String endedAt;
  @override
  final String startedAt;
  @override
  final String remoteId;
  @override
  final int groundAssetsInvolved;
  @override
  final int groundOperativesInvolved;
  @override
  final int aerialAssetsInvolved;
  @override
  final int aerialOperativesInvolved;

  factory _$AttributeResponse(
          [void Function(AttributeResponseBuilder) updates]) =>
      (new AttributeResponseBuilder()..update(updates)).build();

  _$AttributeResponse._(
      {this.codeString,
      this.codeInt,
      this.name,
      this.locality,
      this.longitude,
      this.latitude,
      this.createdAt,
      this.updatedAt,
      this.endedAt,
      this.startedAt,
      this.remoteId,
      this.groundAssetsInvolved,
      this.groundOperativesInvolved,
      this.aerialAssetsInvolved,
      this.aerialOperativesInvolved})
      : super._();

  @override
  AttributeResponse rebuild(void Function(AttributeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeResponseBuilder toBuilder() =>
      new AttributeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeResponse &&
        codeString == other.codeString &&
        codeInt == other.codeInt &&
        name == other.name &&
        locality == other.locality &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        endedAt == other.endedAt &&
        startedAt == other.startedAt &&
        remoteId == other.remoteId &&
        groundAssetsInvolved == other.groundAssetsInvolved &&
        groundOperativesInvolved == other.groundOperativesInvolved &&
        aerialAssetsInvolved == other.aerialAssetsInvolved &&
        aerialOperativesInvolved == other.aerialOperativesInvolved;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                codeString
                                                                    .hashCode),
                                                            codeInt.hashCode),
                                                        name.hashCode),
                                                    locality.hashCode),
                                                longitude.hashCode),
                                            latitude.hashCode),
                                        createdAt.hashCode),
                                    updatedAt.hashCode),
                                endedAt.hashCode),
                            startedAt.hashCode),
                        remoteId.hashCode),
                    groundAssetsInvolved.hashCode),
                groundOperativesInvolved.hashCode),
            aerialAssetsInvolved.hashCode),
        aerialOperativesInvolved.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttributeResponse')
          ..add('codeString', codeString)
          ..add('codeInt', codeInt)
          ..add('name', name)
          ..add('locality', locality)
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('endedAt', endedAt)
          ..add('startedAt', startedAt)
          ..add('remoteId', remoteId)
          ..add('groundAssetsInvolved', groundAssetsInvolved)
          ..add('groundOperativesInvolved', groundOperativesInvolved)
          ..add('aerialAssetsInvolved', aerialAssetsInvolved)
          ..add('aerialOperativesInvolved', aerialOperativesInvolved))
        .toString();
  }
}

class AttributeResponseBuilder
    implements Builder<AttributeResponse, AttributeResponseBuilder> {
  _$AttributeResponse _$v;

  String _codeString;
  String get codeString => _$this._codeString;
  set codeString(String codeString) => _$this._codeString = codeString;

  int _codeInt;
  int get codeInt => _$this._codeInt;
  set codeInt(int codeInt) => _$this._codeInt = codeInt;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _locality;
  String get locality => _$this._locality;
  set locality(String locality) => _$this._locality = locality;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _endedAt;
  String get endedAt => _$this._endedAt;
  set endedAt(String endedAt) => _$this._endedAt = endedAt;

  String _startedAt;
  String get startedAt => _$this._startedAt;
  set startedAt(String startedAt) => _$this._startedAt = startedAt;

  String _remoteId;
  String get remoteId => _$this._remoteId;
  set remoteId(String remoteId) => _$this._remoteId = remoteId;

  int _groundAssetsInvolved;
  int get groundAssetsInvolved => _$this._groundAssetsInvolved;
  set groundAssetsInvolved(int groundAssetsInvolved) =>
      _$this._groundAssetsInvolved = groundAssetsInvolved;

  int _groundOperativesInvolved;
  int get groundOperativesInvolved => _$this._groundOperativesInvolved;
  set groundOperativesInvolved(int groundOperativesInvolved) =>
      _$this._groundOperativesInvolved = groundOperativesInvolved;

  int _aerialAssetsInvolved;
  int get aerialAssetsInvolved => _$this._aerialAssetsInvolved;
  set aerialAssetsInvolved(int aerialAssetsInvolved) =>
      _$this._aerialAssetsInvolved = aerialAssetsInvolved;

  int _aerialOperativesInvolved;
  int get aerialOperativesInvolved => _$this._aerialOperativesInvolved;
  set aerialOperativesInvolved(int aerialOperativesInvolved) =>
      _$this._aerialOperativesInvolved = aerialOperativesInvolved;

  AttributeResponseBuilder();

  AttributeResponseBuilder get _$this {
    if (_$v != null) {
      _codeString = _$v.codeString;
      _codeInt = _$v.codeInt;
      _name = _$v.name;
      _locality = _$v.locality;
      _longitude = _$v.longitude;
      _latitude = _$v.latitude;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _endedAt = _$v.endedAt;
      _startedAt = _$v.startedAt;
      _remoteId = _$v.remoteId;
      _groundAssetsInvolved = _$v.groundAssetsInvolved;
      _groundOperativesInvolved = _$v.groundOperativesInvolved;
      _aerialAssetsInvolved = _$v.aerialAssetsInvolved;
      _aerialOperativesInvolved = _$v.aerialOperativesInvolved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttributeResponse;
  }

  @override
  void update(void Function(AttributeResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AttributeResponse build() {
    final _$result = _$v ??
        new _$AttributeResponse._(
            codeString: codeString,
            codeInt: codeInt,
            name: name,
            locality: locality,
            longitude: longitude,
            latitude: latitude,
            createdAt: createdAt,
            updatedAt: updatedAt,
            endedAt: endedAt,
            startedAt: startedAt,
            remoteId: remoteId,
            groundAssetsInvolved: groundAssetsInvolved,
            groundOperativesInvolved: groundOperativesInvolved,
            aerialAssetsInvolved: aerialAssetsInvolved,
            aerialOperativesInvolved: aerialOperativesInvolved);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
