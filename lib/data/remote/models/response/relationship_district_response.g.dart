// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_district_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelationshipDistrictResponse>
    _$relationshipDistrictResponseSerializer =
    new _$RelationshipDistrictResponseSerializer();

class _$RelationshipDistrictResponseSerializer
    implements StructuredSerializer<RelationshipDistrictResponse> {
  @override
  final Iterable<Type> types = const [
    RelationshipDistrictResponse,
    _$RelationshipDistrictResponse
  ];
  @override
  final String wireName = 'RelationshipDistrictResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RelationshipDistrictResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataResponse)),
    ];

    return result;
  }

  @override
  RelationshipDistrictResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelationshipDistrictResponseBuilder();

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

class _$RelationshipDistrictResponse extends RelationshipDistrictResponse {
  @override
  final DataResponse data;

  factory _$RelationshipDistrictResponse(
          [void Function(RelationshipDistrictResponseBuilder) updates]) =>
      (new RelationshipDistrictResponseBuilder()..update(updates)).build();

  _$RelationshipDistrictResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError(
          'RelationshipDistrictResponse', 'data');
    }
  }

  @override
  RelationshipDistrictResponse rebuild(
          void Function(RelationshipDistrictResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationshipDistrictResponseBuilder toBuilder() =>
      new RelationshipDistrictResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationshipDistrictResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RelationshipDistrictResponse')
          ..add('data', data))
        .toString();
  }
}

class RelationshipDistrictResponseBuilder
    implements
        Builder<RelationshipDistrictResponse,
            RelationshipDistrictResponseBuilder> {
  _$RelationshipDistrictResponse _$v;

  DataResponseBuilder _data;
  DataResponseBuilder get data => _$this._data ??= new DataResponseBuilder();
  set data(DataResponseBuilder data) => _$this._data = data;

  RelationshipDistrictResponseBuilder();

  RelationshipDistrictResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationshipDistrictResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RelationshipDistrictResponse;
  }

  @override
  void update(void Function(RelationshipDistrictResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RelationshipDistrictResponse build() {
    _$RelationshipDistrictResponse _$result;
    try {
      _$result =
          _$v ?? new _$RelationshipDistrictResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RelationshipDistrictResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
