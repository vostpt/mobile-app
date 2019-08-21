// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parish_link_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParishLinkModel extends ParishLinkModel {
  @override
  final String self;

  factory _$ParishLinkModel([void Function(ParishLinkModelBuilder) updates]) =>
      (new ParishLinkModelBuilder()..update(updates)).build();

  _$ParishLinkModel._({this.self}) : super._();

  @override
  ParishLinkModel rebuild(void Function(ParishLinkModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParishLinkModelBuilder toBuilder() =>
      new ParishLinkModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParishLinkModel && self == other.self;
  }

  @override
  int get hashCode {
    return $jf($jc(0, self.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParishLinkModel')..add('self', self))
        .toString();
  }
}

class ParishLinkModelBuilder
    implements Builder<ParishLinkModel, ParishLinkModelBuilder> {
  _$ParishLinkModel _$v;

  String _self;
  String get self => _$this._self;
  set self(String self) => _$this._self = self;

  ParishLinkModelBuilder();

  ParishLinkModelBuilder get _$this {
    if (_$v != null) {
      _self = _$v.self;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParishLinkModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ParishLinkModel;
  }

  @override
  void update(void Function(ParishLinkModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParishLinkModel build() {
    final _$result = _$v ?? new _$ParishLinkModel._(self: self);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
