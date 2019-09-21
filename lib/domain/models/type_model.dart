import 'package:built_value/built_value.dart';
import 'package:vost/domain/models/species_model.dart';

import 'link_model.dart';

part 'type_model.g.dart';

abstract class TypeModel implements Built<TypeModel, TypeModelBuilder> {

  String get id;
  String get name;
  int get code;
  LinkModel get links;
  @nullable SpeciesModel get species;

  TypeModel._();
  factory TypeModel([updates(TypeModelBuilder b)]) = _$TypeModel;
}