import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/parish_service.dart';
import 'package:vost/domain/mappers/parish_mapper.dart';
import 'package:vost/domain/models/parish_model.dart';

class ParishManager {
  ParishService _parishService;
  ParishListResponseMapper _parishResponseMapper;

  ParishManager(this._parishService, this._parishResponseMapper);

  Observable<List<ParishModel>> getParishes() {
    return _parishService.getParishes().map(_parishResponseMapper.map);
  }
}
