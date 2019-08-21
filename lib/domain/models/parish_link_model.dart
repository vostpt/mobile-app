import 'package:built_value/built_value.dart';

part 'parish_link_model.g.dart';

abstract class ParishLinkModel implements Built<ParishLinkModel, ParishLinkModelBuilder> {

  @nullable String get self;

  ParishLinkModel._();
  factory ParishLinkModel([updates(ParishLinkModelBuilder b)]) = _$ParishLinkModel;
}