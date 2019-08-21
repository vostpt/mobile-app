// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseListModel<T> extends BaseListModel<T> {
  @override
  final LinkModel links;
  @override
  final MetaModel meta;
  @override
  final BuiltList<T> data;

  factory _$BaseListModel([void Function(BaseListModelBuilder<T>) updates]) =>
      (new BaseListModelBuilder<T>()..update(updates)).build();

  _$BaseListModel._({this.links, this.meta, this.data}) : super._() {
    if (links == null) {
      throw new BuiltValueNullFieldError('BaseListModel', 'links');
    }
    if (meta == null) {
      throw new BuiltValueNullFieldError('BaseListModel', 'meta');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('BaseListModel', 'data');
    }
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('BaseListModel', 'T');
    }
  }

  @override
  BaseListModel<T> rebuild(void Function(BaseListModelBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseListModelBuilder<T> toBuilder() =>
      new BaseListModelBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseListModel &&
        links == other.links &&
        meta == other.meta &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, links.hashCode), meta.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseListModel')
          ..add('links', links)
          ..add('meta', meta)
          ..add('data', data))
        .toString();
  }
}

class BaseListModelBuilder<T>
    implements Builder<BaseListModel<T>, BaseListModelBuilder<T>> {
  _$BaseListModel<T> _$v;

  LinkModelBuilder _links;
  LinkModelBuilder get links => _$this._links ??= new LinkModelBuilder();
  set links(LinkModelBuilder links) => _$this._links = links;

  MetaModelBuilder _meta;
  MetaModelBuilder get meta => _$this._meta ??= new MetaModelBuilder();
  set meta(MetaModelBuilder meta) => _$this._meta = meta;

  ListBuilder<T> _data;
  ListBuilder<T> get data => _$this._data ??= new ListBuilder<T>();
  set data(ListBuilder<T> data) => _$this._data = data;

  BaseListModelBuilder();

  BaseListModelBuilder<T> get _$this {
    if (_$v != null) {
      _links = _$v.links?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseListModel<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseListModel<T>;
  }

  @override
  void update(void Function(BaseListModelBuilder<T>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseListModel<T> build() {
    _$BaseListModel<T> _$result;
    try {
      _$result = _$v ??
          new _$BaseListModel<T>._(
              links: links.build(), meta: meta.build(), data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
        _$failedField = 'meta';
        meta.build();
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseListModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
