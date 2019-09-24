// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_status_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelationshipStatusResponse> _$relationshipStatusResponseSerializer =
    new _$RelationshipStatusResponseSerializer();

class _$RelationshipStatusResponseSerializer
    implements StructuredSerializer<RelationshipStatusResponse> {
  @override
  final Iterable<Type> types = const [
    RelationshipStatusResponse,
    _$RelationshipStatusResponse
  ];
  @override
  final String wireName = 'RelationshipStatusResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RelationshipStatusResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataResponse)),
    ];

    return result;
  }

  @override
  RelationshipStatusResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelationshipStatusResponseBuilder();

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

class _$RelationshipStatusResponse extends RelationshipStatusResponse {
  @override
  final DataResponse data;

  factory _$RelationshipStatusResponse(
          [void Function(RelationshipStatusResponseBuilder) updates]) =>
      (new RelationshipStatusResponseBuilder()..update(updates)).build();

  _$RelationshipStatusResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('RelationshipStatusResponse', 'data');
    }
  }

  @override
  RelationshipStatusResponse rebuild(
          void Function(RelationshipStatusResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationshipStatusResponseBuilder toBuilder() =>
      new RelationshipStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationshipStatusResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RelationshipStatusResponse')
          ..add('data', data))
        .toString();
  }
}

class RelationshipStatusResponseBuilder
    implements
        Builder<RelationshipStatusResponse, RelationshipStatusResponseBuilder> {
  _$RelationshipStatusResponse _$v;

  DataResponseBuilder _data;
  DataResponseBuilder get data => _$this._data ??= new DataResponseBuilder();
  set data(DataResponseBuilder data) => _$this._data = data;

  RelationshipStatusResponseBuilder();

  RelationshipStatusResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationshipStatusResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RelationshipStatusResponse;
  }

  @override
  void update(void Function(RelationshipStatusResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RelationshipStatusResponse build() {
    _$RelationshipStatusResponse _$result;
    try {
      _$result = _$v ?? new _$RelationshipStatusResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RelationshipStatusResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
