// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseModel<T> extends BaseModel<T> {
  @override
  final LinkModel links;
  @override
  final MetaModel meta;
  @override
  final T data;

  factory _$BaseModel([void Function(BaseModelBuilder<T>) updates]) =>
      (new BaseModelBuilder<T>()..update(updates)).build();

  _$BaseModel._({this.links, this.meta, this.data}) : super._() {
    if (links == null) {
      throw new BuiltValueNullFieldError('BaseModel', 'links');
    }
    if (meta == null) {
      throw new BuiltValueNullFieldError('BaseModel', 'meta');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('BaseModel', 'data');
    }
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('BaseModel', 'T');
    }
  }

  @override
  BaseModel<T> rebuild(void Function(BaseModelBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseModelBuilder<T> toBuilder() => new BaseModelBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseModel &&
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
    return (newBuiltValueToStringHelper('BaseModel')
          ..add('links', links)
          ..add('meta', meta)
          ..add('data', data))
        .toString();
  }
}

class BaseModelBuilder<T>
    implements Builder<BaseModel<T>, BaseModelBuilder<T>> {
  _$BaseModel<T> _$v;

  LinkModelBuilder _links;
  LinkModelBuilder get links => _$this._links ??= new LinkModelBuilder();
  set links(LinkModelBuilder links) => _$this._links = links;

  MetaModelBuilder _meta;
  MetaModelBuilder get meta => _$this._meta ??= new MetaModelBuilder();
  set meta(MetaModelBuilder meta) => _$this._meta = meta;

  T _data;
  T get data => _$this._data;
  set data(T data) => _$this._data = data;

  BaseModelBuilder();

  BaseModelBuilder<T> get _$this {
    if (_$v != null) {
      _links = _$v.links?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseModel<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseModel<T>;
  }

  @override
  void update(void Function(BaseModelBuilder<T>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseModel<T> build() {
    _$BaseModel<T> _$result;
    try {
      _$result = _$v ??
          new _$BaseModel<T>._(
              links: links.build(), meta: meta.build(), data: data);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
        _$failedField = 'meta';
        meta.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
