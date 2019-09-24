// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MetaResponse> _$metaResponseSerializer =
    new _$MetaResponseSerializer();

class _$MetaResponseSerializer implements StructuredSerializer<MetaResponse> {
  @override
  final Iterable<Type> types = const [MetaResponse, _$MetaResponse];
  @override
  final String wireName = 'MetaResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, MetaResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'items',
      serializers.serialize(object.items, specifiedType: const FullType(int)),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  MetaResponse deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetaResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MetaResponse extends MetaResponse {
  @override
  final int items;
  @override
  final int total;

  factory _$MetaResponse([void Function(MetaResponseBuilder) updates]) =>
      (new MetaResponseBuilder()..update(updates)).build();

  _$MetaResponse._({this.items, this.total}) : super._() {
    if (items == null) {
      throw new BuiltValueNullFieldError('MetaResponse', 'items');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('MetaResponse', 'total');
    }
  }

  @override
  MetaResponse rebuild(void Function(MetaResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetaResponseBuilder toBuilder() => new MetaResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetaResponse &&
        items == other.items &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, items.hashCode), total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MetaResponse')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class MetaResponseBuilder
    implements Builder<MetaResponse, MetaResponseBuilder> {
  _$MetaResponse _$v;

  int _items;
  int get items => _$this._items;
  set items(int items) => _$this._items = items;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  MetaResponseBuilder();

  MetaResponseBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items;
      _total = _$v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetaResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MetaResponse;
  }

  @override
  void update(void Function(MetaResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MetaResponse build() {
    final _$result = _$v ?? new _$MetaResponse._(items: items, total: total);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
