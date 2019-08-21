import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

part 'parish_link_response.g.dart';

abstract class ParishLinkResponse implements Built<ParishLinkResponse, ParishLinkResponseBuilder>, SerializedModel<ParishLinkResponse> {
  ParishLinkResponse._();

  static Serializer<ParishLinkResponse> get serializer => _$parishLinkResponseSerializer;

  @nullable String get self;

  factory ParishLinkResponse([updates(ParishLinkResponseBuilder b)]) = _$ParishLinkResponse;
}