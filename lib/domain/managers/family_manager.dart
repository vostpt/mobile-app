import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/family_service.dart';
import 'package:vost/domain/mappers/family_mapper.dart';
import 'package:vost/domain/models/family_model.dart';

class FamilyManager {
  final FamilyService _service;
  final FamilyListResponseMapper _mapper;

  FamilyManager(this._service, this._mapper);

  Observable<List<FamilyModel>> getFamilies() {
    return _service.getFamilies().map(_mapper.map);
  }
}
