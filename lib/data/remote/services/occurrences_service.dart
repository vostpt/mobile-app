import 'package:vost/constants.dart';
import 'package:vost/data/remote/endpoints/occurrences_endpoints.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/base_response.dart';

class OccurrencesService {
  final OccurrencesEndpoints _endpoints;

  OccurrencesService(this._endpoints);

  Stream<BaseListResponse> getRecentOccurrences() {
    return Stream.fromFuture(
            _endpoints.getOccurrences(pageNumber: 1, pageSize: pageSize))
        .map((response) => BaseListResponse.fromJson(response.data));
  }

  Stream<BaseListResponse> getOccurrences(
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
      String sort,
      String order,
      List<String> ids}) {
    return Stream.fromFuture(_endpoints.getOccurrences(
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
            ids: ids))
        .map((response) => BaseListResponse.fromJson(response.data));
  }

  Stream<BaseResponse> getSingleOccurrence(String selfLink) {
    return Stream.fromFuture(_endpoints.getSingleOccurrence(selfLink))
        .map((response) => BaseResponse.fromJson(response.data));
  }
}
