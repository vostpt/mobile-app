import 'package:built_value/built_value.dart';

import 'link_model.dart';

part 'family_model.g.dart';

abstract class FamilyModel implements Built<FamilyModel, FamilyModelBuilder> {
  String get id;
  @nullable
  String get type;
  @nullable
  String get name;
  @nullable
  int get code;
  @nullable
  LinkModel get links;

  FamilyModel._();
  factory FamilyModel([updates(FamilyModelBuilder b)]) = _$FamilyModel;
}
