import 'package:built_value/built_value.dart';

import 'link_model.dart';

part 'parish_model.g.dart';

abstract class ParishModel implements Built<ParishModel, ParishModelBuilder> {

  String get id;
  String get name;
  int get code;
  LinkModel get links;

  ParishModel._();
  factory ParishModel([updates(ParishModelBuilder b)]) = _$ParishModel;
}