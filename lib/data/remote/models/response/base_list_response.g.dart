// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseListResponse> _$baseListResponseSerializer =
    new _$BaseListResponseSerializer();

class _$BaseListResponseSerializer
    implements StructuredSerializer<BaseListResponse> {
  @override
  final Iterable<Type> types = const [BaseListResponse, _$BaseListResponse];
  @override
  final String wireName = 'BaseListResponse';

  @override
  Iterable serialize(Serializers serializers, BaseListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[
      'links',
      serializers.serialize(object.links,
          specifiedType: const FullType(LinkResponse)),
      'meta',
      serializers.serialize(object.meta,
          specifiedType: const FullType(MetaResponse)),
      'data',
      serializers.serialize(object.data,
          specifiedType: new FullType(BuiltList, [parameterT])),
    ];

    return result;
  }

  @override
  BaseListResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new BaseListResponseBuilder<Object>()
        : serializers.newBuilder(specifiedType) as BaseListResponseBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(LinkResponse)) as LinkResponse);
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(MetaResponse)) as MetaResponse);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: new FullType(BuiltList, [parameterT]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$BaseListResponse<T> extends BaseListResponse<T> {
  @override
  final LinkResponse links;
  @override
  final MetaResponse meta;
  @override
  final BuiltList<T> data;

  factory _$BaseListResponse(
          [void Function(BaseListResponseBuilder<T>) updates]) =>
      (new BaseListResponseBuilder<T>()..update(updates)).build();

  _$BaseListResponse._({this.links, this.meta, this.data}) : super._() {
    if (links == null) {
      throw new BuiltValueNullFieldError('BaseListResponse', 'links');
    }
    if (meta == null) {
      throw new BuiltValueNullFieldError('BaseListResponse', 'meta');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('BaseListResponse', 'data');
    }
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('BaseListResponse', 'T');
    }
  }

  @override
  BaseListResponse<T> rebuild(
          void Function(BaseListResponseBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseListResponseBuilder<T> toBuilder() =>
      new BaseListResponseBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseListResponse &&
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
    return (newBuiltValueToStringHelper('BaseListResponse')
          ..add('links', links)
          ..add('meta', meta)
          ..add('data', data))
        .toString();
  }
}

class BaseListResponseBuilder<T>
    implements Builder<BaseListResponse<T>, BaseListResponseBuilder<T>> {
  _$BaseListResponse<T> _$v;

  LinkResponseBuilder _links;
  LinkResponseBuilder get links => _$this._links ??= new LinkResponseBuilder();
  set links(LinkResponseBuilder links) => _$this._links = links;

  MetaResponseBuilder _meta;
  MetaResponseBuilder get meta => _$this._meta ??= new MetaResponseBuilder();
  set meta(MetaResponseBuilder meta) => _$this._meta = meta;

  ListBuilder<T> _data;
  ListBuilder<T> get data => _$this._data ??= new ListBuilder<T>();
  set data(ListBuilder<T> data) => _$this._data = data;

  BaseListResponseBuilder();

  BaseListResponseBuilder<T> get _$this {
    if (_$v != null) {
      _links = _$v.links?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseListResponse<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseListResponse<T>;
  }

  @override
  void update(void Function(BaseListResponseBuilder<T>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseListResponse<T> build() {
    _$BaseListResponse<T> _$result;
    try {
      _$result = _$v ??
          new _$BaseListResponse<T>._(
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
            'BaseListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
