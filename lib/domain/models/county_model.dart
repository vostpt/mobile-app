import 'package:built_value/built_value.dart';

import 'link_model.dart';

part 'county_model.g.dart';

abstract class CountyModel implements Built<CountyModel, CountyModelBuilder> {

  String get id;
  String get name;
  String get code;
  LinkModel get links;
  String get districtId;
  String get districtName;
  String get districtCode;
  LinkModel get districtLinks;


  CountyModel._();
  factory CountyModel([updates(CountyModelBuilder b)]) = _$CountyModel;
}