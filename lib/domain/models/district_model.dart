import 'package:built_value/built_value.dart';

import 'link_model.dart';

part 'district_model.g.dart';

abstract class DistrictModel implements Built<DistrictModel, DistrictModelBuilder> {

  String get id;
  String get name;
  String get code;
  LinkModel get links;

  DistrictModel._();
  factory DistrictModel([updates(DistrictModelBuilder b)]) = _$DistrictModel;
}