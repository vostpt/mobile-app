import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/county_service.dart';
import 'package:vost/data/remote/services/occurrences_service.dart';
import 'package:vost/domain/mappers/county_mapper.dart';
import 'package:vost/domain/mappers/occurrence_mapper.dart';
import 'package:vost/domain/models/county_model.dart';
import 'package:vost/domain/models/occurrence_model.dart';

class OccurrencesManager {
  OccurrencesService _service;
  OccurrenceListResponseMapper _mapper;

  OccurrencesManager(this._service, this._mapper);

  Observable<List<OccurrenceModel>> getRecentOccurrences() {
    return _service.getRecentOccurrences().map(_mapper.map);
  }

  Observable<List<OccurrenceModel>> getOccurrences({int pageNumber, int pageSize, String search, bool exact,
    List<int> events, List<int> types,List<int> statuses, List<int> districts, List<int> counties,
    List<int> parishes, String sort, String order
  }) {
    return _service.getOccurrences(
        pageNumber: pageNumber,
        pageSize: pageSize,
        search: search,
        exact: exact,
        events: events,
        types: types,
        statuses: statuses,
        districts: districts,
        counties: counties,
        parishes: parishes,
        sort: sort,
        order: order
    ).map(_mapper.map);
  }
}
