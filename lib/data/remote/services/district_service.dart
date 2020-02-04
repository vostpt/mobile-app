import 'package:vost/data/remote/endpoints/district_endpoints.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';

class DistrictService {
  final DistrictEndpoints _endpoints;

  DistrictService(this._endpoints);

  Stream<BaseListResponse> getDistricts() {
    return Stream.fromFuture(_endpoints.getDistricts())
        .map((response) => BaseListResponse.fromJson(response.data));
  }
}
