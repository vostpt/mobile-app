// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_source_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelationshipSourceResponse> _$relationshipSourceResponseSerializer =
    new _$RelationshipSourceResponseSerializer();

class _$RelationshipSourceResponseSerializer
    implements StructuredSerializer<RelationshipSourceResponse> {
  @override
  final Iterable<Type> types = const [
    RelationshipSourceResponse,
    _$RelationshipSourceResponse
  ];
  @override
  final String wireName = 'RelationshipSourceResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RelationshipSourceResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataResponse)),
    ];

    return result;
  }

  @override
  RelationshipSourceResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelationshipSourceResponseBuilder();

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

class _$RelationshipSourceResponse extends RelationshipSourceResponse {
  @override
  final DataResponse data;

  factory _$RelationshipSourceResponse(
          [void Function(RelationshipSourceResponseBuilder) updates]) =>
      (new RelationshipSourceResponseBuilder()..update(updates)).build();

  _$RelationshipSourceResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('RelationshipSourceResponse', 'data');
    }
  }

  @override
  RelationshipSourceResponse rebuild(
          void Function(RelationshipSourceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationshipSourceResponseBuilder toBuilder() =>
      new RelationshipSourceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationshipSourceResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RelationshipSourceResponse')
          ..add('data', data))
        .toString();
  }
}

class RelationshipSourceResponseBuilder
    implements
        Builder<RelationshipSourceResponse, RelationshipSourceResponseBuilder> {
  _$RelationshipSourceResponse _$v;

  DataResponseBuilder _data;
  DataResponseBuilder get data => _$this._data ??= new DataResponseBuilder();
  set data(DataResponseBuilder data) => _$this._data = data;

  RelationshipSourceResponseBuilder();

  RelationshipSourceResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationshipSourceResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RelationshipSourceResponse;
  }

  @override
  void update(void Function(RelationshipSourceResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RelationshipSourceResponse build() {
    _$RelationshipSourceResponse _$result;
    try {
      _$result = _$v ?? new _$RelationshipSourceResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RelationshipSourceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
