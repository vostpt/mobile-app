import 'package:vost/data/remote/endpoints/status_endpoints.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';

class StatusService {
  final StatusEndpoints _endpoints;

  StatusService(this._endpoints);

  Stream<BaseListResponse> getStatuses() {
    return Stream.fromFuture(_endpoints.getStatuses())
        .map((response) => BaseListResponse.fromJson(response.data));
  }
}
