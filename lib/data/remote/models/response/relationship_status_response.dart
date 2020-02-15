import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

import 'data_response.dart';

part 'relationship_status_response.g.dart';

abstract class RelationshipStatusResponse
    implements
        Built<RelationshipStatusResponse, RelationshipStatusResponseBuilder>,
        SerializedModel<RelationshipStatusResponse> {
  RelationshipStatusResponse._();

  static Serializer<RelationshipStatusResponse> get serializer =>
      _$relationshipStatusResponseSerializer;

  DataResponse get data;

  factory RelationshipStatusResponse(
          [updates(RelationshipStatusResponseBuilder b)]) =
      _$RelationshipStatusResponse;
}
