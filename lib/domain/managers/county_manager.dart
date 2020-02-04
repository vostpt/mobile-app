import 'package:vost/data/remote/services/county_service.dart';
import 'package:vost/domain/mappers/county_mapper.dart';
import 'package:vost/domain/models/county_model.dart';

class CountyManager {
  final CountyService _countyService;
  final CountyListResponseMapper _countyMapper;

  CountyManager(this._countyService, this._countyMapper);

  Stream<List<CountyModel>> getCounties() {
    return _countyService.getCounties().map(_countyMapper.map);
  }
}
