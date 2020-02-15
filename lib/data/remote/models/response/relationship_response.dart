import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';
import 'package:vost/data/remote/models/response/relationship_district_response.dart';
import 'package:vost/data/remote/models/response/relationship_family_response.dart';
import 'package:vost/data/remote/models/response/relationship_parish_response.dart';
import 'package:vost/data/remote/models/response/relationship_source_response.dart';
import 'package:vost/data/remote/models/response/relationship_species_response.dart';
import 'package:vost/data/remote/models/response/relationship_status_response.dart';
import 'package:vost/data/remote/models/response/relationship_type_response.dart';

part 'relationship_response.g.dart';

abstract class RelationshipResponse
    implements
        Built<RelationshipResponse, RelationshipResponseBuilder>,
        SerializedModel<RelationshipResponse> {
  RelationshipResponse._();

  static Serializer<RelationshipResponse> get serializer =>
      _$relationshipResponseSerializer;

  @nullable
  RelationshipDistrictResponse get district;
  @nullable
  RelationshipFamilyResponse get family;
  @nullable
  RelationshipParishResponse get parish;
  @nullable
  RelationshipSpeciesResponse get species;
  @nullable
  RelationshipStatusResponse get status;
  @nullable
  RelationshipTypeResponse get type;
  @nullable
  RelationshipSourceResponse get source;

  factory RelationshipResponse([updates(RelationshipResponseBuilder b)]) =
      _$RelationshipResponse;
}
