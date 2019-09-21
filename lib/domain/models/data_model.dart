import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

import 'attribute_model.dart';
import 'link_model.dart';

part 'data_model.g.dart';

abstract class DataModel
    implements Built<DataModel, DataModelBuilder>, SerializedModel<DataModel> {
  DataModel._();

  static Serializer<DataModel> get serializer => _$dataModelSerializer;

  String get type;

  String get id;

  AttributeModel get attributes;

  LinkModel get links;

  factory DataModel([updates(DataModelBuilder b)]) = _$DataModel;
}
