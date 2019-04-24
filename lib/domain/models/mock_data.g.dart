// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MockData extends MockData {
  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final bool completed;

  factory _$MockData([void Function(MockDataBuilder) updates]) =>
      (new MockDataBuilder()..update(updates)).build();

  _$MockData._({this.userId, this.id, this.title, this.completed}) : super._() {
    if (userId == null) {
      throw new BuiltValueNullFieldError('MockData', 'userId');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('MockData', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('MockData', 'title');
    }
    if (completed == null) {
      throw new BuiltValueNullFieldError('MockData', 'completed');
    }
  }

  @override
  MockData rebuild(void Function(MockDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MockDataBuilder toBuilder() => new MockDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MockData &&
        userId == other.userId &&
        id == other.id &&
        title == other.title &&
        completed == other.completed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userId.hashCode), id.hashCode), title.hashCode),
        completed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MockData')
          ..add('userId', userId)
          ..add('id', id)
          ..add('title', title)
          ..add('completed', completed))
        .toString();
  }
}

class MockDataBuilder implements Builder<MockData, MockDataBuilder> {
  _$MockData _$v;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  bool _completed;
  bool get completed => _$this._completed;
  set completed(bool completed) => _$this._completed = completed;

  MockDataBuilder();

  MockDataBuilder get _$this {
    if (_$v != null) {
      _userId = _$v.userId;
      _id = _$v.id;
      _title = _$v.title;
      _completed = _$v.completed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MockData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MockData;
  }

  @override
  void update(void Function(MockDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MockData build() {
    final _$result = _$v ??
        new _$MockData._(
            userId: userId, id: id, title: title, completed: completed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
