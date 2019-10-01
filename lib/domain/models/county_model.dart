import 'package:built_value/built_value.dart';

import 'district_model.dart';
import 'link_model.dart';

part 'county_model.g.dart';

abstract class CountyModel implements Built<CountyModel, CountyModelBuilder> {

  String get id;
  @nullable String get type;
  @nullable String get name;
  @nullable String get code;
  @nullable LinkModel get links;
  @nullable DistrictModel get district;

  CountyModel._();
  factory CountyModel([updates(CountyModelBuilder b)]) = _$CountyModel;
}