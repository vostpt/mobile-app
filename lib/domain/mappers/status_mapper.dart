import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/base_response.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/domain/models/status_model.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'link_mapper.dart';

class StatusResponseMapper
    extends Mapper<BaseResponse, StatusModel> with StatusMapper{
  final LinkResponseMapper linkMapper;

  StatusResponseMapper(this.linkMapper);

  @override
  StatusModel map(BaseResponse value) {
    return mapStatus(value.data, value.links);
  }

}

class StatusListResponseMapper
    extends Mapper<BaseListResponse, List<StatusModel>>  with StatusMapper{
  final LinkResponseMapper linkMapper;

  StatusListResponseMapper(this.linkMapper);

  @override
  List<StatusModel> map(BaseListResponse value) {
    var list = List<StatusModel>();
    for (var data in value.data.toList()) {
      list.add(mapStatus(data, value.links));
    }
    return list;
  }
}

mixin StatusMapper {
  LinkResponseMapper linkMapper;

  StatusModel mapStatus(DataResponse data, LinkResponse baseLinks) {
    return StatusModel((b) => b
      ..id  = data.id
      ..name  = data.attributes.name
      ..code  = data.attributes.codeInt
      ..links  = linkMapper.map(combineLinks(baseLinks, data.links)).toBuilder()
    );
  }
}
