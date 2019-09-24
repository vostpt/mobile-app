import 'package:dio/dio.dart';

import '../../../constants.dart';

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
    queryExact : exact ? "true" : "false",
    queryEvents : events,
    queryTypes : types,
    queryStatuses : statuses,
    queryDistricts : districts,
    queryCounties : counties,
    queryParishes : parishes,
    querySort : sort,
    queryOrder : order,
    });
  }
}