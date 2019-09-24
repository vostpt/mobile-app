import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/base_response.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/domain/models/species_model.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'link_mapper.dart';

class SpeciesResponseMapper
    extends Mapper<BaseResponse, SpeciesModel> with SpeciesMapper{
  final LinkResponseMapper linkMapper;

  SpeciesResponseMapper(this.linkMapper);

  @override
  SpeciesModel map(BaseResponse value) {
    return mapStatus(value.data, value.links);
  }

}

class SpeciesListResponseMapper
    extends Mapper<BaseListResponse, List<SpeciesModel>>  with SpeciesMapper{
  final LinkResponseMapper linkMapper;

  SpeciesListResponseMapper(this.linkMapper);

  @override
  List<SpeciesModel> map(BaseListResponse value) {
    var list = List<SpeciesModel>();
    for (var data in value.data.toList()) {
      list.add(mapStatus(data, value.links));
    }
    return list;
  }
}

mixin SpeciesMapper {
  LinkResponseMapper linkMapper;

  SpeciesModel mapStatus(DataResponse data, LinkResponse baseLinks) {
    return SpeciesModel((b) => b
      ..id  = data.id
      ..name  = data.attributes.name
      ..code  = data.attributes.code
      ..links  = linkMapper.map(combineLinks(baseLinks, data.links)).toBuilder()
    );
  }
}
