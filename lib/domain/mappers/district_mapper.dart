import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/base_response.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/domain/models/district_model.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'link_mapper.dart';

class DistrictResponseMapper
    extends Mapper<BaseResponse, DistrictModel> with DistrictMapper{
  final LinkResponseMapper linkMapper;

  DistrictResponseMapper(this.linkMapper);

  @override
  DistrictModel map(BaseResponse value) {
    return mapStatus(value.data, value.links);
  }

}

class DistrictListResponseMapper
    extends Mapper<BaseListResponse, List<DistrictModel>>  with DistrictMapper{
  final LinkResponseMapper linkMapper;

  DistrictListResponseMapper(this.linkMapper);

  @override
  List<DistrictModel> map(BaseListResponse value) {
    var list = List<DistrictModel>();
    for (var data in value.data.toList()) {
      list.add(mapStatus(data, value.links));
    }
    return list;
  }
}

mixin DistrictMapper {
  LinkResponseMapper linkMapper;

  DistrictModel mapStatus(DataResponse data, LinkResponse baseLinks) {
    return DistrictModel((b) => b
      ..id  = data.id
      ..name  = data.attributes.name
      ..code  = data.attributes.code
      ..links  = linkMapper.map(combineLinks(baseLinks, data.links)).toBuilder()
    );
  }
}
