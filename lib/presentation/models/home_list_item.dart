import 'package:vost/domain/models/occurrence_model.dart';

import 'package:built_value/built_value.dart';

part 'home_list_item.g.dart';

abstract class HomeListItem
    implements Built<HomeListItem, HomeListItemBuilder> {
  OccurrenceModel get occurrence;
  bool get isFavorite;

  HomeListItem._();
  factory HomeListItem([updates(HomeListItemBuilder b)]) = _$HomeListItem;
}
