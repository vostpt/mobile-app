import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/base_response.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/domain/models/species_model.dart';
import 'package:vost/domain/models/type_model.dart';
import 'package:vost/presentation/utils/misc.dart';

import 'link_mapper.dart';

class TypeResponseMapper
    extends Mapper<BaseResponse, TypeModel> with TypeMapper{
  LinkResponseMapper linkMapper;

  TypeResponseMapper(this.linkMapper);

  @override
  TypeModel map(BaseResponse value) {
    return mapStatus(value.data, value.links, value.included.toList());
  }

}

class TypeListResponseMapper
    extends Mapper<BaseListResponse, List<TypeModel>>  with TypeMapper{
  LinkResponseMapper linkMapper;

  TypeListResponseMapper(this.linkMapper);

  @override
  List<TypeModel> map(BaseListResponse value) {
    var list = List<TypeModel>();
    for (var data in value.data.toList()) {
      list.add(mapStatus(data, value.links, value.included.toList()));
    }
    return list;
  }
}

mixin TypeMapper {
  LinkResponseMapper linkMapper;

  TypeModel mapStatus(DataResponse data, LinkResponse baseLinks, List<DataResponse> included) {
    var attribute = getAttributeById(data.relationships?.species?.data?.id, data.relationships?.species?.data?.type, included);
    return TypeModel((b) => b
      ..id  = data.id
      ..name  = data.attributes.name
      ..code  = data.attributes.code
      ..links  = linkMapper.map(combineLinks(baseLinks, data.links)).toBuilder()
      ..species = SpeciesModel((b) => b
        ..id = attribute?.id
        ..type = attribute?.type
        ..name = attribute?.attributes?.name
        ..code = attribute?.attributes?.code
        ..links = attribute?.links != null ? linkMapper.map(attribute?.links).toBuilder() : null
      ).toBuilder()
    );
  }
}
