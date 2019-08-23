// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetaModel extends MetaModel {
  @override
  final int items;
  @override
  final int total;

  factory _$MetaModel([void Function(MetaModelBuilder) updates]) =>
      (new MetaModelBuilder()..update(updates)).build();

  _$MetaModel._({this.items, this.total}) : super._() {
    if (items == null) {
      throw new BuiltValueNullFieldError('MetaModel', 'items');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('MetaModel', 'total');
    }
  }

  @override
  MetaModel rebuild(void Function(MetaModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetaModelBuilder toBuilder() => new MetaModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetaModel && items == other.items && total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, items.hashCode), total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MetaModel')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class MetaModelBuilder implements Builder<MetaModel, MetaModelBuilder> {
  _$MetaModel _$v;

  int _items;
  int get items => _$this._items;
  set items(int items) => _$this._items = items;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  MetaModelBuilder();

  MetaModelBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items;
      _total = _$v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetaModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MetaModel;
  }

  @override
  void update(void Function(MetaModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MetaModel build() {
    final _$result = _$v ?? new _$MetaModel._(items: items, total: total);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
