import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/base_response.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/domain/models/family_model.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'link_mapper.dart';

class FamilyResponseMapper
    extends Mapper<BaseResponse, FamilyModel> with FamilyMapper{
  final LinkResponseMapper linkMapper;

  FamilyResponseMapper(this.linkMapper);

  @override
  FamilyModel map(BaseResponse value) {
    return mapStatus(value.data, value.links);
  }

}

class FamilyListResponseMapper
    extends Mapper<BaseListResponse, List<FamilyModel>>  with FamilyMapper{
  final LinkResponseMapper linkMapper;

  FamilyListResponseMapper(this.linkMapper);

  @override
  List<FamilyModel> map(BaseListResponse value) {
    var list = List<FamilyModel>();
    for (var data in value.data.toList()) {
      list.add(mapStatus(data, value.links));
    }
    return list;
  }
}

mixin FamilyMapper {
  LinkResponseMapper linkMapper;

  FamilyModel mapStatus(DataResponse data, LinkResponse baseLinks) {
    return FamilyModel((b) => b
      ..id  = data.id
      ..name  = data.attributes.name
      ..code  = data.attributes.codeInt
      ..links  = linkMapper.map(combineLinks(baseLinks, data.links)).toBuilder()
    );
  }
}
