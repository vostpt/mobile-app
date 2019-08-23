import 'package:built_value/built_value.dart';

part 'link_model.g.dart';

abstract class LinkModel implements Built<LinkModel, LinkModelBuilder> {

  String get first;
  String get last;
  String get next;

  LinkModel._();
  factory LinkModel([updates(LinkModelBuilder b)]) = _$LinkModel;
}