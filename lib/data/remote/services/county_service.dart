import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/endpoints/county_endpoints.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';

class CountyService {
  final CountyEndpoints _endpoints;

  CountyService(this._endpoints);

  Observable<BaseListResponse> getCounties() {
    return Observable.fromFuture(_endpoints.getCounties())
        .map((response) => BaseListResponse.fromJson(response.data));
  }
}
