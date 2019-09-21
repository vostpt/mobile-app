import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/endpoints/county_endpoints.dart';
import 'package:vost/data/remote/endpoints/district_endpoints.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';

class DistrictService {
  DistrictEndpoints _endpoints;

  DistrictService(this._endpoints);

  Observable<BaseListResponse> getDistricts() {
    return Observable.fromFuture(_endpoints.getDistricts())
        .map((response) => BaseListResponse.fromJson(response.data));
  }
}
