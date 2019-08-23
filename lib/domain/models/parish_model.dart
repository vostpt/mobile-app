import 'package:built_value/built_value.dart';
import 'package:vost/domain/models/parish_link_model.dart';

import 'attribute_model.dart';

part 'parish_model.g.dart';

abstract class ParishModel implements Built<ParishModel, ParishModelBuilder> {
  String get type;

  String get id;

  AttributeModel get attributes;

  ParishLinkModel get links;

  ParishModel._();

  factory ParishModel([updates(ParishModelBuilder b)]) = _$ParishModel;
}
