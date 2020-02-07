import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

import 'data_response.dart';

part 'relationship_type_response.g.dart';

abstract class RelationshipTypeResponse
    implements
        Built<RelationshipTypeResponse, RelationshipTypeResponseBuilder>,
        SerializedModel<RelationshipTypeResponse> {
  RelationshipTypeResponse._();

  static Serializer<RelationshipTypeResponse> get serializer =>
      _$relationshipTypeResponseSerializer;

  DataResponse get data;

  factory RelationshipTypeResponse(
          [updates(RelationshipTypeResponseBuilder b)]) =
      _$RelationshipTypeResponse;
}
