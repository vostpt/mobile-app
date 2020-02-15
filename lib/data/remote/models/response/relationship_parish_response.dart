import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

import 'data_response.dart';

part 'relationship_parish_response.g.dart';

abstract class RelationshipParishResponse
    implements
        Built<RelationshipParishResponse, RelationshipParishResponseBuilder>,
        SerializedModel<RelationshipParishResponse> {
  RelationshipParishResponse._();

  static Serializer<RelationshipParishResponse> get serializer =>
      _$relationshipParishResponseSerializer;

  DataResponse get data;

  factory RelationshipParishResponse(
          [updates(RelationshipParishResponseBuilder b)]) =
      _$RelationshipParishResponse;
}
