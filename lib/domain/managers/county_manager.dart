import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/county_service.dart';
import 'package:vost/domain/mappers/county_mapper.dart';
import 'package:vost/domain/models/county_model.dart';
import 'package:vost/domain/models/parish_model.dart';

class CountyManager {
  CountyService _countyService;
  CountyListResponseMapper _countyMapper;

  CountyManager(this._countyService, this._countyMapper);

  Observable<List<CountyModel>> getCounties() {
    return _countyService.getCounties().map(_countyMapper.map);
  }
}
