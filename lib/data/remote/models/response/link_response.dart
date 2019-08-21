import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

part 'link_response.g.dart';

abstract class LinkResponse implements Built<LinkResponse, LinkResponseBuilder>, SerializedModel<LinkResponse> {
  LinkResponse._();

  static Serializer<LinkResponse> get serializer => _$linkResponseSerializer;

  String get first;
  String get last;
  String get next;

  factory LinkResponse([updates(LinkResponseBuilder b)]) = _$LinkResponse;
}