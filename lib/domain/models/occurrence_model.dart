import 'package:built_value/built_value.dart';
import 'package:latlong/latlong.dart';
import 'package:vost/domain/models/on_site_means_model.dart';
import 'package:vost/domain/models/parish_model.dart';
import 'package:vost/domain/models/status_model.dart';
import 'package:vost/domain/models/type_model.dart';

import 'link_model.dart';

part 'occurrence_model.g.dart';

abstract class OccurrenceModel
    implements Built<OccurrenceModel, OccurrenceModelBuilder> {
  String get id;

  @nullable
  String get name;

  @nullable
  int get code;

  @nullable
  String get startedAt;

  @nullable
  String get endedAt;

  @nullable
  String get updatedAt;

  LatLng get coordinates;

  LinkModel get links;

  @nullable
  OnSiteMeansModel get onSiteMeans;

  @nullable
  TypeModel get type;

  @nullable
  StatusModel get status;

  @nullable
  ParishModel get parish;

  bool get isDetailed;

  OccurrenceModel._();

  factory OccurrenceModel([updates(OccurrenceModelBuilder b)]) =
      _$OccurrenceModel;
}
