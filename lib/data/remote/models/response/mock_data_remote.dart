import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

part 'mock_data_remote.g.dart';

abstract class MockDataRemote implements Built<MockDataRemote, MockDataRemoteBuilder>, SerializedModel<MockDataRemote> {
  MockDataRemote._();

  static Serializer<MockDataRemote> get serializer => _$mockDataRemoteSerializer;

  int get userId;
  int get id;
  String get title;
  bool get completed;

  factory MockDataRemote([updates(MockDataRemoteBuilder b)]) = _$MockDataRemote;
}