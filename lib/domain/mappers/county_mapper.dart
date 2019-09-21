import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/base_response.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/domain/models/county_model.dart';
import 'package:vost/domain/models/district_model.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'link_mapper.dart';

class CountyResponseMapper
    extends Mapper<BaseResponse, CountyModel> with DistrictMapper{
  LinkResponseMapper linkMapper;

  CountyResponseMapper(this.linkMapper);

  @override
  CountyModel map(BaseResponse value) {
    return mapStatus(value.data, value.links, value.included.toList());
  }

}

class CountyListResponseMapper
    extends Mapper<BaseListResponse, List<CountyModel>>  with DistrictMapper{
  LinkResponseMapper linkMapper;

  CountyListResponseMapper(this.linkMapper);

  @override
  List<CountyModel> map(BaseListResponse value) {
    var list = List<CountyModel>();
    for (var data in value.data.toList()) {
      list.add(mapStatus(data, value.links, value.included.toList()));
    }
    return list;
  }
}

mixin DistrictMapper {
  LinkResponseMapper linkMapper;

  CountyModel mapStatus(DataResponse data, LinkResponse baseLinks, List<DataResponse> included) {
    var attribute = getAttributeById(data.relationships?.district?.data?.id, data.relationships?.district?.data?.type, included);
    return CountyModel((b) => b
      ..id  = data.id
      ..name  = data.attributes.name
      ..code  = data.attributes.code
      ..links  = linkMapper.map(combineLinks(baseLinks, data.links)).toBuilder()
      ..district = DistrictModel((b) => b
        ..id = attribute?.id
        ..type = attribute?.type
        ..name = attribute?.attributes?.name
        ..code = attribute?.attributes?.code
        ..links = attribute?.links != null ? linkMapper.map(attribute?.links).toBuilder() : null
      ).toBuilder()
    );
  }
}
