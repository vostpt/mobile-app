// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parish_link_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParishLinkResponse> _$parishLinkResponseSerializer =
    new _$ParishLinkResponseSerializer();

class _$ParishLinkResponseSerializer
    implements StructuredSerializer<ParishLinkResponse> {
  @override
  final Iterable<Type> types = const [ParishLinkResponse, _$ParishLinkResponse];
  @override
  final String wireName = 'ParishLinkResponse';

  @override
  Iterable serialize(Serializers serializers, ParishLinkResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.self != null) {
      result
        ..add('self')
        ..add(serializers.serialize(object.self,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ParishLinkResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParishLinkResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'self':
          result.self = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ParishLinkResponse extends ParishLinkResponse {
  @override
  final String self;

  factory _$ParishLinkResponse(
          [void Function(ParishLinkResponseBuilder) updates]) =>
      (new ParishLinkResponseBuilder()..update(updates)).build();

  _$ParishLinkResponse._({this.self}) : super._();

  @override
  ParishLinkResponse rebuild(
          void Function(ParishLinkResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParishLinkResponseBuilder toBuilder() =>
      new ParishLinkResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParishLinkResponse && self == other.self;
  }

  @override
  int get hashCode {
    return $jf($jc(0, self.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParishLinkResponse')
          ..add('self', self))
        .toString();
  }
}

class ParishLinkResponseBuilder
    implements Builder<ParishLinkResponse, ParishLinkResponseBuilder> {
  _$ParishLinkResponse _$v;

  String _self;
  String get self => _$this._self;
  set self(String self) => _$this._self = self;

  ParishLinkResponseBuilder();

  ParishLinkResponseBuilder get _$this {
    if (_$v != null) {
      _self = _$v.self;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParishLinkResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ParishLinkResponse;
  }

  @override
  void update(void Function(ParishLinkResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParishLinkResponse build() {
    final _$result = _$v ?? new _$ParishLinkResponse._(self: self);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
