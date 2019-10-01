import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/endpoints/occurrences_endpoints.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';

class OccurrencesService {
  final OccurrencesEndpoints _endpoints;

  OccurrencesService(this._endpoints);

  Observable<BaseListResponse> getRecentOccurrences() {
    return Observable.fromFuture(_endpoints.getRecentOccurrences())
        .map((response) => BaseListResponse.fromJson(response.data));
  }


  Observable<BaseListResponse> getOccurrences({int pageNumber, int pageSize, String search, bool exact,
    List<int> events, List<int> types,List<int> statuses, List<int> districts, List<int> counties,
    List<int> parishes, String sort, String order
  }) {
    return Observable.fromFuture(_endpoints.getOccurrences(
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
    ))
        .map((response) => BaseListResponse.fromJson(response.data));
  }
}
