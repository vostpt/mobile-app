import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

import 'data_response.dart';

part 'relationship_family_response.g.dart';

abstract class RelationshipFamilyResponse
    implements
        Built<RelationshipFamilyResponse, RelationshipFamilyResponseBuilder>,
        SerializedModel<RelationshipFamilyResponse> {
  RelationshipFamilyResponse._();

  static Serializer<RelationshipFamilyResponse> get serializer =>
      _$relationshipFamilyResponseSerializer;

  DataResponse get data;

  factory RelationshipFamilyResponse(
          [updates(RelationshipFamilyResponseBuilder b)]) =
      _$RelationshipFamilyResponse;
}
