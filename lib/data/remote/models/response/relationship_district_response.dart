import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

import 'data_response.dart';

part 'relationship_district_response.g.dart';

abstract class RelationshipDistrictResponse implements Built<RelationshipDistrictResponse, RelationshipDistrictResponseBuilder>, SerializedModel<RelationshipDistrictResponse> {
  RelationshipDistrictResponse._();

  static Serializer<RelationshipDistrictResponse> get serializer => _$relationshipDistrictResponseSerializer;

  DataResponse get data;

  factory RelationshipDistrictResponse([updates(RelationshipDistrictResponseBuilder b)]) = _$RelationshipDistrictResponse;
}