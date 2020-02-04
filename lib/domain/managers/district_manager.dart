import 'package:vost/data/remote/services/district_service.dart';
import 'package:vost/domain/mappers/district_mapper.dart';
import 'package:vost/domain/models/district_model.dart';

class DistrictManager {
  final DistrictService _service;
  final DistrictListResponseMapper _mapper;

  DistrictManager(this._service, this._mapper);

  Stream<List<DistrictModel>> getDistricts() {
    return _service.getDistricts().map(_mapper.map);
  }
}
