// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_parish_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelationshipParishResponse> _$relationshipParishResponseSerializer =
    new _$RelationshipParishResponseSerializer();

class _$RelationshipParishResponseSerializer
    implements StructuredSerializer<RelationshipParishResponse> {
  @override
  final Iterable<Type> types = const [
    RelationshipParishResponse,
    _$RelationshipParishResponse
  ];
  @override
  final String wireName = 'RelationshipParishResponse';

  @override
  Iterable serialize(Serializers serializers, RelationshipParishResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataResponse)),
    ];

    return result;
  }

  @override
  RelationshipParishResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelationshipParishResponseBuilder();

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

class _$RelationshipParishResponse extends RelationshipParishResponse {
  @override
  final DataResponse data;

  factory _$RelationshipParishResponse(
          [void Function(RelationshipParishResponseBuilder) updates]) =>
      (new RelationshipParishResponseBuilder()..update(updates)).build();

  _$RelationshipParishResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('RelationshipParishResponse', 'data');
    }
  }

  @override
  RelationshipParishResponse rebuild(
          void Function(RelationshipParishResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationshipParishResponseBuilder toBuilder() =>
      new RelationshipParishResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationshipParishResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RelationshipParishResponse')
          ..add('data', data))
        .toString();
  }
}

class RelationshipParishResponseBuilder
    implements
        Builder<RelationshipParishResponse, RelationshipParishResponseBuilder> {
  _$RelationshipParishResponse _$v;

  DataResponseBuilder _data;
  DataResponseBuilder get data => _$this._data ??= new DataResponseBuilder();
  set data(DataResponseBuilder data) => _$this._data = data;

  RelationshipParishResponseBuilder();

  RelationshipParishResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationshipParishResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RelationshipParishResponse;
  }

  @override
  void update(void Function(RelationshipParishResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RelationshipParishResponse build() {
    _$RelationshipParishResponse _$result;
    try {
      _$result = _$v ?? new _$RelationshipParishResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RelationshipParishResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
