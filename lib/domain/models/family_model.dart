import 'package:built_value/built_value.dart';

import 'link_model.dart';

part 'family_model.g.dart';

abstract class FamilyModel implements Built<FamilyModel, FamilyModelBuilder> {

  String get id;
  String get name;
  String get code;
  LinkModel get links;

  FamilyModel._();
  factory FamilyModel([updates(FamilyModelBuilder b)]) = _$FamilyModel;
}