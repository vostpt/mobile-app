
import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/domain/mappers/link_mapper.dart';
import 'package:vost/domain/models/data_model.dart';

import 'attribute_mapper.dart';

class DataResponseMapper extends Mapper<DataResponse, DataModel> {
  AttributeResponseMapper _attributeResponseMapper;
  LinkResponseMapper _linkResponseMapper;


  DataResponseMapper(this._attributeResponseMapper,
      this._linkResponseMapper);

  @override
  DataModel map(DataResponse value) {
    return DataModel(
        (b) => b
          ..type = value.type
          ..id = value.id
          ..attributes = _attributeResponseMapper.map(value.attributes).toBuilder()
          ..links = _linkResponseMapper.map(value.links).toBuilder()
    );
  }
}
