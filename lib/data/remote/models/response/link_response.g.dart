// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LinkResponse> _$linkResponseSerializer =
    new _$LinkResponseSerializer();

class _$LinkResponseSerializer implements StructuredSerializer<LinkResponse> {
  @override
  final Iterable<Type> types = const [LinkResponse, _$LinkResponse];
  @override
  final String wireName = 'LinkResponse';

  @override
  Iterable serialize(Serializers serializers, LinkResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.first != null) {
      result
        ..add('first')
        ..add(serializers.serialize(object.first,
            specifiedType: const FullType(String)));
    }
    if (object.last != null) {
      result
        ..add('last')
        ..add(serializers.serialize(object.last,
            specifiedType: const FullType(String)));
    }
    if (object.next != null) {
      result
        ..add('next')
        ..add(serializers.serialize(object.next,
            specifiedType: const FullType(String)));
    }
    if (object.self != null) {
      result
        ..add('self')
        ..add(serializers.serialize(object.self,
            specifiedType: const FullType(String)));
    }
    if (object.related != null) {
      result
        ..add('related')
        ..add(serializers.serialize(object.related,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  LinkResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinkResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last':
          result.last = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'self':
          result.self = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'related':
          result.related = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LinkResponse extends LinkResponse {
  @override
  final String first;
  @override
  final String last;
  @override
  final String next;
  @override
  final String self;
  @override
  final String related;

  factory _$LinkResponse([void Function(LinkResponseBuilder) updates]) =>
      (new LinkResponseBuilder()..update(updates)).build();

  _$LinkResponse._({this.first, this.last, this.next, this.self, this.related})
      : super._();

  @override
  LinkResponse rebuild(void Function(LinkResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinkResponseBuilder toBuilder() => new LinkResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LinkResponse &&
        first == other.first &&
        last == other.last &&
        next == other.next &&
        self == other.self &&
        related == other.related;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, first.hashCode), last.hashCode), next.hashCode),
            self.hashCode),
        related.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LinkResponse')
          ..add('first', first)
          ..add('last', last)
          ..add('next', next)
          ..add('self', self)
          ..add('related', related))
        .toString();
  }
}

class LinkResponseBuilder
    implements Builder<LinkResponse, LinkResponseBuilder> {
  _$LinkResponse _$v;

  String _first;
  String get first => _$this._first;
  set first(String first) => _$this._first = first;

  String _last;
  String get last => _$this._last;
  set last(String last) => _$this._last = last;

  String _next;
  String get next => _$this._next;
  set next(String next) => _$this._next = next;

  String _self;
  String get self => _$this._self;
  set self(String self) => _$this._self = self;

  String _related;
  String get related => _$this._related;
  set related(String related) => _$this._related = related;

  LinkResponseBuilder();

  LinkResponseBuilder get _$this {
    if (_$v != null) {
      _first = _$v.first;
      _last = _$v.last;
      _next = _$v.next;
      _self = _$v.self;
      _related = _$v.related;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LinkResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LinkResponse;
  }

  @override
  void update(void Function(LinkResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LinkResponse build() {
    final _$result = _$v ??
        new _$LinkResponse._(
            first: first, last: last, next: next, self: self, related: related);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
