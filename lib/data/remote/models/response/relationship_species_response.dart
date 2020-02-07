import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

import 'data_response.dart';

part 'relationship_species_response.g.dart';

abstract class RelationshipSpeciesResponse
    implements
        Built<RelationshipSpeciesResponse, RelationshipSpeciesResponseBuilder>,
        SerializedModel<RelationshipSpeciesResponse> {
  RelationshipSpeciesResponse._();

  static Serializer<RelationshipSpeciesResponse> get serializer =>
      _$relationshipSpeciesResponseSerializer;

  DataResponse get data;

  factory RelationshipSpeciesResponse(
          [updates(RelationshipSpeciesResponseBuilder b)]) =
      _$RelationshipSpeciesResponse;
}
