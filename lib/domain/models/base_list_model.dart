import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import 'link_model.dart';
import 'meta_model.dart';

part 'base_list_model.g.dart';

abstract class BaseListModel<T> implements Built<BaseListModel<T>, BaseListModelBuilder<T>> {

  LinkModel get links;
  MetaModel get meta;
  BuiltList<T> get data;

  BaseListModel._();
  factory BaseListModel([updates(BaseListModelBuilder<T> b)]) = _$BaseListModel<T>;
}