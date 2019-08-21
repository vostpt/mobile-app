import 'package:built_value/built_value.dart';

part 'attribute_model.g.dart';

abstract class AttributeModel implements Built<AttributeModel, AttributeModelBuilder> {

  String get code;
  String get name;
  String get createdAt;
  String get updatedAt;

  AttributeModel._();
  factory AttributeModel([updates(AttributeModelBuilder b)]) = _$AttributeModel;
}