// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelationshipResponse> _$relationshipResponseSerializer =
    new _$RelationshipResponseSerializer();

class _$RelationshipResponseSerializer
    implements StructuredSerializer<RelationshipResponse> {
  @override
  final Iterable<Type> types = const [
    RelationshipResponse,
    _$RelationshipResponse
  ];
  @override
  final String wireName = 'RelationshipResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RelationshipResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.district != null) {
      result
        ..add('district')
        ..add(serializers.serialize(object.district,
            specifiedType: const FullType(RelationshipDistrictResponse)));
    }
    if (object.family != null) {
      result
        ..add('family')
        ..add(serializers.serialize(object.family,
            specifiedType: const FullType(RelationshipFamilyResponse)));
    }
    if (object.parish != null) {
      result
        ..add('parish')
        ..add(serializers.serialize(object.parish,
            specifiedType: const FullType(RelationshipParishResponse)));
    }
    if (object.species != null) {
      result
        ..add('species')
        ..add(serializers.serialize(object.species,
            specifiedType: const FullType(RelationshipSpeciesResponse)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(RelationshipStatusResponse)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(RelationshipTypeResponse)));
    }
    return result;
  }

  @override
  RelationshipResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelationshipResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'district':
          result.district.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RelationshipDistrictResponse))
              as RelationshipDistrictResponse);
          break;
        case 'family':
          result.family.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RelationshipFamilyResponse))
              as RelationshipFamilyResponse);
          break;
        case 'parish':
          result.parish.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RelationshipParishResponse))
              as RelationshipParishResponse);
          break;
        case 'species':
          result.species.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RelationshipSpeciesResponse))
              as RelationshipSpeciesResponse);
          break;
        case 'status':
          result.status.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RelationshipStatusResponse))
              as RelationshipStatusResponse);
          break;
        case 'type':
          result.type.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RelationshipTypeResponse))
              as RelationshipTypeResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$RelationshipResponse extends RelationshipResponse {
  @override
  final RelationshipDistrictResponse district;
  @override
  final RelationshipFamilyResponse family;
  @override
  final RelationshipParishResponse parish;
  @override
  final RelationshipSpeciesResponse species;
  @override
  final RelationshipStatusResponse status;
  @override
  final RelationshipTypeResponse type;

  factory _$RelationshipResponse(
          [void Function(RelationshipResponseBuilder) updates]) =>
      (new RelationshipResponseBuilder()..update(updates)).build();

  _$RelationshipResponse._(
      {this.district,
      this.family,
      this.parish,
      this.species,
      this.status,
      this.type})
      : super._();

  @override
  RelationshipResponse rebuild(
          void Function(RelationshipResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationshipResponseBuilder toBuilder() =>
      new RelationshipResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationshipResponse &&
        district == other.district &&
        family == other.family &&
        parish == other.parish &&
        species == other.species &&
        status == other.status &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, district.hashCode), family.hashCode),
                    parish.hashCode),
                species.hashCode),
            status.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RelationshipResponse')
          ..add('district', district)
          ..add('family', family)
          ..add('parish', parish)
          ..add('species', species)
          ..add('status', status)
          ..add('type', type))
        .toString();
  }
}

class RelationshipResponseBuilder
    implements Builder<RelationshipResponse, RelationshipResponseBuilder> {
  _$RelationshipResponse _$v;

  RelationshipDistrictResponseBuilder _district;
  RelationshipDistrictResponseBuilder get district =>
      _$this._district ??= new RelationshipDistrictResponseBuilder();
  set district(RelationshipDistrictResponseBuilder district) =>
      _$this._district = district;

  RelationshipFamilyResponseBuilder _family;
  RelationshipFamilyResponseBuilder get family =>
      _$this._family ??= new RelationshipFamilyResponseBuilder();
  set family(RelationshipFamilyResponseBuilder family) =>
      _$this._family = family;

  RelationshipParishResponseBuilder _parish;
  RelationshipParishResponseBuilder get parish =>
      _$this._parish ??= new RelationshipParishResponseBuilder();
  set parish(RelationshipParishResponseBuilder parish) =>
      _$this._parish = parish;

  RelationshipSpeciesResponseBuilder _species;
  RelationshipSpeciesResponseBuilder get species =>
      _$this._species ??= new RelationshipSpeciesResponseBuilder();
  set species(RelationshipSpeciesResponseBuilder species) =>
      _$this._species = species;

  RelationshipStatusResponseBuilder _status;
  RelationshipStatusResponseBuilder get status =>
      _$this._status ??= new RelationshipStatusResponseBuilder();
  set status(RelationshipStatusResponseBuilder status) =>
      _$this._status = status;

  RelationshipTypeResponseBuilder _type;
  RelationshipTypeResponseBuilder get type =>
      _$this._type ??= new RelationshipTypeResponseBuilder();
  set type(RelationshipTypeResponseBuilder type) => _$this._type = type;

  RelationshipResponseBuilder();

  RelationshipResponseBuilder get _$this {
    if (_$v != null) {
      _district = _$v.district?.toBuilder();
      _family = _$v.family?.toBuilder();
      _parish = _$v.parish?.toBuilder();
      _species = _$v.species?.toBuilder();
      _status = _$v.status?.toBuilder();
      _type = _$v.type?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationshipResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RelationshipResponse;
  }

  @override
  void update(void Function(RelationshipResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RelationshipResponse build() {
    _$RelationshipResponse _$result;
    try {
      _$result = _$v ??
          new _$RelationshipResponse._(
              district: _district?.build(),
              family: _family?.build(),
              parish: _parish?.build(),
              species: _species?.build(),
              status: _status?.build(),
              type: _type?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'district';
        _district?.build();
        _$failedField = 'family';
        _family?.build();
        _$failedField = 'parish';
        _parish?.build();
        _$failedField = 'species';
        _species?.build();
        _$failedField = 'status';
        _status?.build();
        _$failedField = 'type';
        _type?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RelationshipResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
