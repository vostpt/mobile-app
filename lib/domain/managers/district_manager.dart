import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/county_service.dart';
import 'package:vost/data/remote/services/district_service.dart';
import 'package:vost/domain/mappers/county_mapper.dart';
import 'package:vost/domain/mappers/district_mapper.dart';
import 'package:vost/domain/models/county_model.dart';
import 'package:vost/domain/models/district_model.dart';
import 'package:vost/domain/models/parish_model.dart';

class DistrictManager {
  DistrictService _service;
  DistrictListResponseMapper _mapper;

  DistrictManager(this._service, this._mapper);

  Observable<List<DistrictModel>> getDistricts() {
    return _service.getDistricts().map(_mapper.map);
  }
}
