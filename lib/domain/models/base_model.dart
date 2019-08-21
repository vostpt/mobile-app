import 'package:built_value/built_value.dart';

import 'link_model.dart';
import 'meta_model.dart';

part 'base_model.g.dart';

abstract class BaseModel<T> implements Built<BaseModel<T>, BaseModelBuilder<T>> {

  LinkModel get links;
  MetaModel get meta;
  T get data;

  BaseModel._();
  factory BaseModel([updates(BaseModelBuilder<T> b)]) = _$BaseModel<T>;
}