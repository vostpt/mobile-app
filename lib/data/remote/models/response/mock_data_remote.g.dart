// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_data_remote.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MockDataRemote> _$mockDataRemoteSerializer =
    new _$MockDataRemoteSerializer();

class _$MockDataRemoteSerializer
    implements StructuredSerializer<MockDataRemote> {
  @override
  final Iterable<Type> types = const [MockDataRemote, _$MockDataRemote];
  @override
  final String wireName = 'MockDataRemote';

  @override
  Iterable serialize(Serializers serializers, MockDataRemote object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'completed',
      serializers.serialize(object.completed,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  MockDataRemote deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MockDataRemoteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'completed':
          result.completed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$MockDataRemote extends MockDataRemote {
  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final bool completed;

  factory _$MockDataRemote([void Function(MockDataRemoteBuilder) updates]) =>
      (new MockDataRemoteBuilder()..update(updates)).build();

  _$MockDataRemote._({this.userId, this.id, this.title, this.completed})
      : super._() {
    if (userId == null) {
      throw new BuiltValueNullFieldError('MockDataRemote', 'userId');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('MockDataRemote', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('MockDataRemote', 'title');
    }
    if (completed == null) {
      throw new BuiltValueNullFieldError('MockDataRemote', 'completed');
    }
  }

  @override
  MockDataRemote rebuild(void Function(MockDataRemoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MockDataRemoteBuilder toBuilder() =>
      new MockDataRemoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MockDataRemote &&
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
    return (newBuiltValueToStringHelper('MockDataRemote')
          ..add('userId', userId)
          ..add('id', id)
          ..add('title', title)
          ..add('completed', completed))
        .toString();
  }
}

class MockDataRemoteBuilder
    implements Builder<MockDataRemote, MockDataRemoteBuilder> {
  _$MockDataRemote _$v;

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

  MockDataRemoteBuilder();

  MockDataRemoteBuilder get _$this {
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
  void replace(MockDataRemote other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MockDataRemote;
  }

  @override
  void update(void Function(MockDataRemoteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MockDataRemote build() {
    final _$result = _$v ??
        new _$MockDataRemote._(
            userId: userId, id: id, title: title, completed: completed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
