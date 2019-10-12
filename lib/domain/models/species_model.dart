import 'package:built_value/built_value.dart';

import 'link_model.dart';

part 'species_model.g.dart';

abstract class SpeciesModel implements Built<SpeciesModel, SpeciesModelBuilder> {

  String get id;
  String get name;
  @nullable String get type;
  @nullable int get code;
  @nullable LinkModel get links;

  SpeciesModel._();
  factory SpeciesModel([updates(SpeciesModelBuilder b)]) = _$SpeciesModel;
}