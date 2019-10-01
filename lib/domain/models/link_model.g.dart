// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LinkModel extends LinkModel {
  @override
  final String first;
  @override
  final String last;
  @override
  final String next;
  @override
  final String self;

  factory _$LinkModel([void Function(LinkModelBuilder) updates]) =>
      (new LinkModelBuilder()..update(updates)).build();

  _$LinkModel._({this.first, this.last, this.next, this.self}) : super._();

  @override
  LinkModel rebuild(void Function(LinkModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinkModelBuilder toBuilder() => new LinkModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LinkModel &&
        first == other.first &&
        last == other.last &&
        next == other.next &&
        self == other.self;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, first.hashCode), last.hashCode), next.hashCode),
        self.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LinkModel')
          ..add('first', first)
          ..add('last', last)
          ..add('next', next)
          ..add('self', self))
        .toString();
  }
}

class LinkModelBuilder implements Builder<LinkModel, LinkModelBuilder> {
  _$LinkModel _$v;

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

  LinkModelBuilder();

  LinkModelBuilder get _$this {
    if (_$v != null) {
      _first = _$v.first;
      _last = _$v.last;
      _next = _$v.next;
      _self = _$v.self;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LinkModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LinkModel;
  }

  @override
  void update(void Function(LinkModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LinkModel build() {
    final _$result = _$v ??
        new _$LinkModel._(first: first, last: last, next: next, self: self);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
