import 'package:built_value/built_value.dart';

part 'meta_model.g.dart';

abstract class MetaModel implements Built<MetaModel, MetaModelBuilder> {

  int get items;
  int get total;

  MetaModel._();
  factory MetaModel([updates(MetaModelBuilder b)]) = _$MetaModel;
}