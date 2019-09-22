import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/species_service.dart';
import 'package:vost/domain/mappers/species_mapper.dart';
import 'package:vost/domain/models/species_model.dart';

class SpeciesManager {
  SpeciesService _service;
  SpeciesListResponseMapper _mapper;

  SpeciesManager(this._service, this._mapper);

  Observable<List<SpeciesModel>> getSpecies() {
    return _service.getSpecies().map(_mapper.map);
  }
}
