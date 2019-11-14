import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/occurrences_service.dart';
import 'package:vost/domain/mappers/occurrence_mapper.dart';
import 'package:vost/domain/models/occurrence_model.dart';

class OccurrencesManager {
  final OccurrencesService _service;
  final OccurrenceListResponseMapper _listMapper;
  final OccurrenceResponseMapper _singleMapper;

  OccurrencesManager(this._service, this._listMapper, this._singleMapper);

  Observable<List<OccurrenceModel>> getRecentOccurrences() {
    return _service.getRecentOccurrences().map(_listMapper.map);
  }

  Observable<List<OccurrenceModel>> getOccurrences(
      {int pageNumber,
      int pageSize,
      String search,
      bool exact,
      List<int> events,
      List<int> types,
      List<int> statuses,
      List<int> districts,
      List<int> counties,
      List<int> parishes,
      List<String> ids,
      String sort,
      String order}) {
    return _service
        .getOccurrences(
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
            order: order,
            ids: ids
    )
        .map(_listMapper.map);
  }

  Observable<OccurrenceModel> getOccurrenceBySelfLink(String selfLink) {
    return _service
        .getSingleOccurrence(selfLink)
        .map(_singleMapper.map)
        .map((occurrence) => occurrence.rebuild((b) => b..isDetailed = true));
  }
}
