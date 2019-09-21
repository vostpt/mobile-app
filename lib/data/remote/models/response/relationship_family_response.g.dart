// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_family_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelationshipFamilyResponse> _$relationshipFamilyResponseSerializer =
    new _$RelationshipFamilyResponseSerializer();

class _$RelationshipFamilyResponseSerializer
    implements StructuredSerializer<RelationshipFamilyResponse> {
  @override
  final Iterable<Type> types = const [
    RelationshipFamilyResponse,
    _$RelationshipFamilyResponse
  ];
  @override
  final String wireName = 'RelationshipFamilyResponse';

  @override
  Iterable serialize(Serializers serializers, RelationshipFamilyResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataResponse)),
    ];

    return result;
  }

  @override
  RelationshipFamilyResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelationshipFamilyResponseBuilder();

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

class _$RelationshipFamilyResponse extends RelationshipFamilyResponse {
  @override
  final DataResponse data;

  factory _$RelationshipFamilyResponse(
          [void Function(RelationshipFamilyResponseBuilder) updates]) =>
      (new RelationshipFamilyResponseBuilder()..update(updates)).build();

  _$RelationshipFamilyResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('RelationshipFamilyResponse', 'data');
    }
  }

  @override
  RelationshipFamilyResponse rebuild(
          void Function(RelationshipFamilyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationshipFamilyResponseBuilder toBuilder() =>
      new RelationshipFamilyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationshipFamilyResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RelationshipFamilyResponse')
          ..add('data', data))
        .toString();
  }
}

class RelationshipFamilyResponseBuilder
    implements
        Builder<RelationshipFamilyResponse, RelationshipFamilyResponseBuilder> {
  _$RelationshipFamilyResponse _$v;

  DataResponseBuilder _data;
  DataResponseBuilder get data => _$this._data ??= new DataResponseBuilder();
  set data(DataResponseBuilder data) => _$this._data = data;

  RelationshipFamilyResponseBuilder();

  RelationshipFamilyResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationshipFamilyResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RelationshipFamilyResponse;
  }

  @override
  void update(void Function(RelationshipFamilyResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RelationshipFamilyResponse build() {
    _$RelationshipFamilyResponse _$result;
    try {
      _$result = _$v ?? new _$RelationshipFamilyResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RelationshipFamilyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
