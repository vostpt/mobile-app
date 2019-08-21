import 'package:built_collection/built_collection.dart';
import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/parish_response.dart';
import 'package:vost/domain/mappers/parish_mapper.dart';
import 'package:vost/domain/models/base_list_model.dart';
import 'package:vost/domain/models/parish_model.dart';

import 'link_mapper.dart';
import 'meta_mapper.dart';

class BaseParishResponseMapper extends Mapper<BaseListResponse<ParishResponse>,
    BaseListModel<ParishModel>> {
  LinkResponseMapper _linkMapper;
  MetaResponseMapper _metaMapper;
  ParishResponseMapper _parishResponseMapper;

  BaseParishResponseMapper(
      this._linkMapper, this._metaMapper, this._parishResponseMapper);

  @override
  BaseListModel<ParishModel> map(BaseListResponse<ParishResponse> value) {
    return BaseListModel<ParishModel>((b) => b
      ..links = _linkMapper.map(value.links).toBuilder()
      ..meta = _metaMapper.map(value.meta).toBuilder()
      ..data = ListBuilder(_parishResponseMapper.mapList(value.data.toList())));
  }
}
