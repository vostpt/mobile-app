import 'package:built_value/built_value.dart';

import 'link_model.dart';

part 'type_model.g.dart';

abstract class TypeModel implements Built<TypeModel, TypeModelBuilder> {

  String get id;
  String get name;
  String get code;
  LinkModel get links;
  String get speciesId;
  String get speciesName;
  String get speciesCode;
  LinkModel get speciesLinks;

  TypeModel._();
  factory TypeModel([updates(TypeModelBuilder b)]) = _$TypeModel;
}