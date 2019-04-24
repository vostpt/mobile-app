import 'package:built_value/built_value.dart';

part 'mock_data.g.dart';

abstract class MockData implements Built<MockData, MockDataBuilder> {

  int get userId;
  int get id;
  String get title;
  bool get completed;

  MockData._();
  factory MockData([updates(MockDataBuilder b)]) = _$MockData;
}