import 'package:built_value/built_value.dart';

part 'link_model.g.dart';

abstract class LinkModel implements Built<LinkModel, LinkModelBuilder> {
  @nullable
  String get first;
  @nullable
  String get last;
  @nullable
  String get next;
  @nullable
  String get self;

  LinkModel._();
  factory LinkModel([updates(LinkModelBuilder b)]) = _$LinkModel;
}
