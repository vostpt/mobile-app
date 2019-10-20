import 'package:built_value/built_value.dart';
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
  String get updatedAt;

  LinkModel get links;
  @nullable
  TypeModel get type;
  @nullable
  StatusModel get status;
  @nullable
  ParishModel get parish;

  OccurrenceModel._();
  factory OccurrenceModel([updates(OccurrenceModelBuilder b)]) =
      _$OccurrenceModel;
}
