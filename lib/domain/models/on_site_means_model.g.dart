// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_site_means_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OnSiteMeansModel extends OnSiteMeansModel {
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
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$OnSiteMeansModel(
          [void Function(OnSiteMeansModelBuilder) updates]) =>
      (new OnSiteMeansModelBuilder()..update(updates)).build();

  _$OnSiteMeansModel._(
      {this.remoteId,
      this.groundAssetsInvolved,
      this.groundOperativesInvolved,
      this.aerialAssetsInvolved,
      this.aerialOperativesInvolved,
      this.createdAt,
      this.updatedAt})
      : super._() {
    if (remoteId == null) {
      throw new BuiltValueNullFieldError('OnSiteMeansModel', 'remoteId');
    }
  }

  @override
  OnSiteMeansModel rebuild(void Function(OnSiteMeansModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnSiteMeansModelBuilder toBuilder() =>
      new OnSiteMeansModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnSiteMeansModel &&
        remoteId == other.remoteId &&
        groundAssetsInvolved == other.groundAssetsInvolved &&
        groundOperativesInvolved == other.groundOperativesInvolved &&
        aerialAssetsInvolved == other.aerialAssetsInvolved &&
        aerialOperativesInvolved == other.aerialOperativesInvolved &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, remoteId.hashCode),
                            groundAssetsInvolved.hashCode),
                        groundOperativesInvolved.hashCode),
                    aerialAssetsInvolved.hashCode),
                aerialOperativesInvolved.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnSiteMeansModel')
          ..add('remoteId', remoteId)
          ..add('groundAssetsInvolved', groundAssetsInvolved)
          ..add('groundOperativesInvolved', groundOperativesInvolved)
          ..add('aerialAssetsInvolved', aerialAssetsInvolved)
          ..add('aerialOperativesInvolved', aerialOperativesInvolved)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class OnSiteMeansModelBuilder
    implements Builder<OnSiteMeansModel, OnSiteMeansModelBuilder> {
  _$OnSiteMeansModel _$v;

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

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  OnSiteMeansModelBuilder();

  OnSiteMeansModelBuilder get _$this {
    if (_$v != null) {
      _remoteId = _$v.remoteId;
      _groundAssetsInvolved = _$v.groundAssetsInvolved;
      _groundOperativesInvolved = _$v.groundOperativesInvolved;
      _aerialAssetsInvolved = _$v.aerialAssetsInvolved;
      _aerialOperativesInvolved = _$v.aerialOperativesInvolved;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnSiteMeansModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OnSiteMeansModel;
  }

  @override
  void update(void Function(OnSiteMeansModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnSiteMeansModel build() {
    final _$result = _$v ??
        new _$OnSiteMeansModel._(
            remoteId: remoteId,
            groundAssetsInvolved: groundAssetsInvolved,
            groundOperativesInvolved: groundOperativesInvolved,
            aerialAssetsInvolved: aerialAssetsInvolved,
            aerialOperativesInvolved: aerialOperativesInvolved,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
