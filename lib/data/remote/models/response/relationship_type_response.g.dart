// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_type_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelationshipTypeResponse> _$relationshipTypeResponseSerializer =
    new _$RelationshipTypeResponseSerializer();

class _$RelationshipTypeResponseSerializer
    implements StructuredSerializer<RelationshipTypeResponse> {
  @override
  final Iterable<Type> types = const [
    RelationshipTypeResponse,
    _$RelationshipTypeResponse
  ];
  @override
  final String wireName = 'RelationshipTypeResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RelationshipTypeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataResponse)),
    ];

    return result;
  }

  @override
  RelationshipTypeResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelationshipTypeResponseBuilder();

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

class _$RelationshipTypeResponse extends RelationshipTypeResponse {
  @override
  final DataResponse data;

  factory _$RelationshipTypeResponse(
          [void Function(RelationshipTypeResponseBuilder) updates]) =>
      (new RelationshipTypeResponseBuilder()..update(updates)).build();

  _$RelationshipTypeResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('RelationshipTypeResponse', 'data');
    }
  }

  @override
  RelationshipTypeResponse rebuild(
          void Function(RelationshipTypeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationshipTypeResponseBuilder toBuilder() =>
      new RelationshipTypeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationshipTypeResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RelationshipTypeResponse')
          ..add('data', data))
        .toString();
  }
}

class RelationshipTypeResponseBuilder
    implements
        Builder<RelationshipTypeResponse, RelationshipTypeResponseBuilder> {
  _$RelationshipTypeResponse _$v;

  DataResponseBuilder _data;
  DataResponseBuilder get data => _$this._data ??= new DataResponseBuilder();
  set data(DataResponseBuilder data) => _$this._data = data;

  RelationshipTypeResponseBuilder();

  RelationshipTypeResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationshipTypeResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RelationshipTypeResponse;
  }

  @override
  void update(void Function(RelationshipTypeResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RelationshipTypeResponse build() {
    _$RelationshipTypeResponse _$result;
    try {
      _$result = _$v ?? new _$RelationshipTypeResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RelationshipTypeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
