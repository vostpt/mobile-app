import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

import 'data_response.dart';

part 'relationship_source_response.g.dart';

abstract class RelationshipSourceResponse
    implements
        Built<RelationshipSourceResponse, RelationshipSourceResponseBuilder>,
        SerializedModel<RelationshipSourceResponse> {
  RelationshipSourceResponse._();

  static Serializer<RelationshipSourceResponse> get serializer =>
      _$relationshipSourceResponseSerializer;

  DataResponse get data;

  factory RelationshipSourceResponse(
          [updates(RelationshipSourceResponseBuilder b)]) =
      _$RelationshipSourceResponse;
}
