
import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/parish_response.dart';
import 'package:vost/domain/mappers/parish_link_mapper.dart';
import 'package:vost/domain/models/parish_model.dart';

import 'attribute_mapper.dart';

class ParishResponseMapper extends Mapper<ParishResponse, ParishModel> {
  AttributeResponseMapper _attributeResponseMapper;
  ParishLinkResponseMapper _parishLinkResponseMapper;


  ParishResponseMapper(this._attributeResponseMapper,
      this._parishLinkResponseMapper);

  @override
  ParishModel map(ParishResponse value) {
    return ParishModel(
        (b) => b
          ..type = value.type
          ..id = value.id
          ..attributes = _attributeResponseMapper.map(value.attributes).toBuilder()
          ..links = _parishLinkResponseMapper.map(value.links).toBuilder()
    );
  }
}
