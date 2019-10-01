import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/base_response.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/domain/models/parish_model.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'link_mapper.dart';

class ParishResponseMapper
    extends Mapper<BaseResponse, ParishModel> with ParishMapper{
  final LinkResponseMapper linkMapper;

  ParishResponseMapper(this.linkMapper);

  @override
  ParishModel map(BaseResponse value) {
    return mapParish(value.data, value.links);
  }

}

class ParishListResponseMapper
    extends Mapper<BaseListResponse, List<ParishModel>>  with ParishMapper{
  final LinkResponseMapper linkMapper;

  ParishListResponseMapper(this.linkMapper);

  @override
  List<ParishModel> map(BaseListResponse value) {
    var list = List<ParishModel>();
    for (var data in value.data.toList()) {
      list.add(mapParish(data, value.links));
    }
    return list;
  }
}

mixin ParishMapper {
  LinkResponseMapper linkMapper;

  ParishModel mapParish(DataResponse data, LinkResponse baseLinks) {
    return ParishModel((b) => b
      ..id  = data.id
      ..name  = data.attributes.name
      ..code  = data.attributes.codeInt
      ..links  = linkMapper.map(combineLinks(baseLinks, data.links)).toBuilder()
    );
  }
}
