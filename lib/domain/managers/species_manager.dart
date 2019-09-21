import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/county_service.dart';
import 'package:vost/data/remote/services/species_service.dart';
import 'package:vost/data/remote/services/status_service.dart';
import 'package:vost/data/remote/services/types_service.dart';
import 'package:vost/domain/mappers/county_mapper.dart';
import 'package:vost/domain/mappers/species_mapper.dart';
import 'package:vost/domain/mappers/status_mapper.dart';
import 'package:vost/domain/mappers/type_mapper.dart';
import 'package:vost/domain/models/county_model.dart';
import 'package:vost/domain/models/species_model.dart';
import 'package:vost/domain/models/status_model.dart';
import 'package:vost/domain/models/type_model.dart';

class SpeciesManager {
  SpeciesService _service;
  SpeciesListResponseMapper _mapper;

  SpeciesManager(this._service, this._mapper);

  Observable<List<SpeciesModel>> getSpecies() {
    return _service.getSpecies().map(_mapper.map);
  }
}
