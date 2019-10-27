import 'package:latlong/latlong.dart';
import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/base_response.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/domain/models/occurrence_model.dart';
import 'package:vost/domain/models/parish_model.dart';
import 'package:vost/domain/models/status_model.dart';
import 'package:vost/domain/models/type_model.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'link_mapper.dart';

class OccurrenceResponseMapper extends Mapper<BaseResponse, OccurrenceModel>
    with OccurrenceMapper {
  final LinkResponseMapper linkMapper;

  OccurrenceResponseMapper(this.linkMapper);

  @override
  OccurrenceModel map(BaseResponse value) {
    return mapStatus(value.data, value.links, value.included.toList());
  }
}

class OccurrenceListResponseMapper
    extends Mapper<BaseListResponse, List<OccurrenceModel>>
    with OccurrenceMapper {
  final LinkResponseMapper linkMapper;

  OccurrenceListResponseMapper(this.linkMapper);

  @override
  List<OccurrenceModel> map(BaseListResponse value) {
    var list = List<OccurrenceModel>();
    for (var data in value.data.toList()) {
      list.add(mapStatus(data, value.links, value.included.toList()));
    }
    return list;
  }
}

mixin OccurrenceMapper {
  LinkResponseMapper linkMapper;

  OccurrenceModel mapStatus(
      DataResponse data, LinkResponse baseLinks, List<DataResponse> included) {
    var type = getAttributeById(data.relationships?.type?.data?.id,
        data.relationships?.type?.data?.type, included);
    var status = getAttributeById(data.relationships?.status?.data?.id,
        data.relationships?.status?.data?.type, included);
    var parish = getAttributeById(data.relationships?.parish?.data?.id,
        data.relationships?.parish?.data?.type, included);
    return OccurrenceModel((b) => b
      ..id = data.id
      ..updatedAt = data.attributes.updatedAt
      ..name = data.attributes.name
      ..code = data.attributes.codeInt
      ..coordinates =
          new LatLng(data.attributes.latitude, data.attributes.longitude)
      ..links = linkMapper.map(combineLinks(baseLinks, data.links)).toBuilder()
      ..type = TypeModel((b) => b
        ..id = type?.id
        ..type = type?.type
        ..name = type?.attributes?.name
        ..code = type?.attributes?.codeInt
        ..links = type?.links != null
            ? linkMapper.map(type?.links).toBuilder()
            : null).toBuilder()
      ..status = StatusModel((b) => b
        ..id = status?.id
        ..type = status?.type
        ..name = status?.attributes?.name
        ..code = status?.attributes?.codeInt
        ..links = status?.links != null
            ? linkMapper.map(type?.links).toBuilder()
            : null).toBuilder()
      ..parish = ParishModel((b) => b
        ..id = parish?.id
        ..type = parish?.type
        ..name = parish?.attributes?.name
        ..code = parish?.attributes?.codeInt
        ..links = parish?.links != null
            ? linkMapper.map(parish?.links).toBuilder()
            : null).toBuilder());
  }
}
