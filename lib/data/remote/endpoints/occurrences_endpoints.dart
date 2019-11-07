import 'package:dio/dio.dart';

import 'package:vost/constants.dart';

class OccurrencesEndpoints {

  final Dio _dio;

  OccurrencesEndpoints(this._dio);

  Future<Response> getRecentOccurrences() {
    return _dio.get(pathOccurrences);
  }

  Future<Response> getOccurrences({int pageNumber, int pageSize, String search, bool exact,
    List<int> events, List<int> types,List<int> statuses, List<int> districts, List<int> counties,
    List<int> parishes, String sort, String order
  }) {
    return _dio.get(pathOccurrences, queryParameters: {
    queryPageNumber : pageNumber,
    queryPageSize : pageSize,
    querySearch : search,
    queryExact : exact ? 1 : 0,
    queryEvents : events,
    queryTypes : types,
    queryStatuses : statuses,
    queryDistricts : districts,
    queryCounties : counties,
    queryParishes : parishes,
    querySort : sort,
    queryOrder : order,
    }..removeWhere((key, val) => val == null));
  }

  Future<Response> getSingleOccurrence(String selfLink) {
    return _dio.get(selfLink);
  }
}