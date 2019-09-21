import 'package:built_value/built_value.dart';

import 'link_model.dart';

part 'status_model.g.dart';

abstract class StatusModel implements Built<StatusModel, StatusModelBuilder> {

  String get id;
  String get name;
  int get code;
  LinkModel get links;

  StatusModel._();
  factory StatusModel([updates(StatusModelBuilder b)]) = _$StatusModel;
}