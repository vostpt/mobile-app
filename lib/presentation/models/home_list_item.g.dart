// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeListItem extends HomeListItem {
  @override
  final OccurrenceModel occurrence;
  @override
  final bool isFavorite;

  factory _$HomeListItem([void Function(HomeListItemBuilder) updates]) =>
      (new HomeListItemBuilder()..update(updates)).build();

  _$HomeListItem._({this.occurrence, this.isFavorite}) : super._() {
    if (occurrence == null) {
      throw new BuiltValueNullFieldError('HomeListItem', 'occurrence');
    }
    if (isFavorite == null) {
      throw new BuiltValueNullFieldError('HomeListItem', 'isFavorite');
    }
  }

  @override
  HomeListItem rebuild(void Function(HomeListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeListItemBuilder toBuilder() => new HomeListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeListItem &&
        occurrence == other.occurrence &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, occurrence.hashCode), isFavorite.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeListItem')
          ..add('occurrence', occurrence)
          ..add('isFavorite', isFavorite))
        .toString();
  }
}

class HomeListItemBuilder
    implements Builder<HomeListItem, HomeListItemBuilder> {
  _$HomeListItem _$v;

  OccurrenceModelBuilder _occurrence;
  OccurrenceModelBuilder get occurrence =>
      _$this._occurrence ??= new OccurrenceModelBuilder();
  set occurrence(OccurrenceModelBuilder occurrence) =>
      _$this._occurrence = occurrence;

  bool _isFavorite;
  bool get isFavorite => _$this._isFavorite;
  set isFavorite(bool isFavorite) => _$this._isFavorite = isFavorite;

  HomeListItemBuilder();

  HomeListItemBuilder get _$this {
    if (_$v != null) {
      _occurrence = _$v.occurrence?.toBuilder();
      _isFavorite = _$v.isFavorite;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeListItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeListItem;
  }

  @override
  void update(void Function(HomeListItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeListItem build() {
    _$HomeListItem _$result;
    try {
      _$result = _$v ??
          new _$HomeListItem._(
              occurrence: occurrence.build(), isFavorite: isFavorite);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'occurrence';
        occurrence.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeListItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
