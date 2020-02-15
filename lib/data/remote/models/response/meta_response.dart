import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:vost/data/remote/models/_base/parser.dart';

part 'meta_response.g.dart';

abstract class MetaResponse
    implements
        Built<MetaResponse, MetaResponseBuilder>,
        SerializedModel<MetaResponse> {
  MetaResponse._();

  static Serializer<MetaResponse> get serializer => _$metaResponseSerializer;

  int get items;
  int get total;

  factory MetaResponse([updates(MetaResponseBuilder b)]) = _$MetaResponse;
}
