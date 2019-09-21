// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_species_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelationshipSpeciesResponse>
    _$relationshipSpeciesResponseSerializer =
    new _$RelationshipSpeciesResponseSerializer();

class _$RelationshipSpeciesResponseSerializer
    implements StructuredSerializer<RelationshipSpeciesResponse> {
  @override
  final Iterable<Type> types = const [
    RelationshipSpeciesResponse,
    _$RelationshipSpeciesResponse
  ];
  @override
  final String wireName = 'RelationshipSpeciesResponse';

  @override
  Iterable serialize(
      Serializers serializers, RelationshipSpeciesResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataResponse)),
    ];

    return result;
  }

  @override
  RelationshipSpeciesResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelationshipSpeciesResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(DataResponse)) as DataResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$RelationshipSpeciesResponse extends RelationshipSpeciesResponse {
  @override
  final DataResponse data;

  factory _$RelationshipSpeciesResponse(
          [void Function(RelationshipSpeciesResponseBuilder) updates]) =>
      (new RelationshipSpeciesResponseBuilder()..update(updates)).build();

  _$RelationshipSpeciesResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('RelationshipSpeciesResponse', 'data');
    }
  }

  @override
  RelationshipSpeciesResponse rebuild(
          void Function(RelationshipSpeciesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationshipSpeciesResponseBuilder toBuilder() =>
      new RelationshipSpeciesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationshipSpeciesResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RelationshipSpeciesResponse')
          ..add('data', data))
        .toString();
  }
}

class RelationshipSpeciesResponseBuilder
    implements
        Builder<RelationshipSpeciesResponse,
            RelationshipSpeciesResponseBuilder> {
  _$RelationshipSpeciesResponse _$v;

  DataResponseBuilder _data;
  DataResponseBuilder get data => _$this._data ??= new DataResponseBuilder();
  set data(DataResponseBuilder data) => _$this._data = data;

  RelationshipSpeciesResponseBuilder();

  RelationshipSpeciesResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationshipSpeciesResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RelationshipSpeciesResponse;
  }

  @override
  void update(void Function(RelationshipSpeciesResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RelationshipSpeciesResponse build() {
    _$RelationshipSpeciesResponse _$result;
    try {
      _$result = _$v ?? new _$RelationshipSpeciesResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RelationshipSpeciesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
