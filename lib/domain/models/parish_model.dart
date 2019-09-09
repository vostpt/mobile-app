import 'package:built_value/built_value.dart';

import 'attribute_model.dart';
import 'link_model.dart';

part 'parish_model.g.dart';

abstract class ParishModel implements Built<ParishModel, ParishModelBuilder> {
  String get type;

  String get id;

  AttributeModel get attributes;

  LinkModel get links;

  ParishModel._();

  factory ParishModel([updates(ParishModelBuilder b)]) = _$ParishModel;
}
