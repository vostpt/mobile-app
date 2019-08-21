import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/parish_service.dart';
import 'package:vost/domain/mappers/base_parish_mapper.dart';
import 'package:vost/domain/models/base_list_model.dart';
import 'package:vost/domain/models/parish_model.dart';

class ParishManager {
  ParishService _parishService;
  BaseParishResponseMapper _parishResponseMapper;

  ParishManager(this._parishService, this._parishResponseMapper);

  Observable<BaseListModel<ParishModel>> getParishes() {
    return _parishService.getParishes().map(_parishResponseMapper.map);
  }
}
