import 'package:built_value/built_value.dart';

part 'attribute_model.g.dart';

abstract class AttributeModel implements Built<AttributeModel, AttributeModelBuilder> {

  @nullable
  String get code;

  @nullable
  String get name;

  @nullable
  String get locality;

  @nullable
  double get longitude;

  @nullable
  double get latitude;

  @nullable
  String get createdAt;

  @nullable
  String get updatedAt;

  @nullable
  String get endedAt;

  @nullable
  String get startedAt;

  AttributeModel._();
  factory AttributeModel([updates(AttributeModelBuilder b)]) = _$AttributeModel;
}