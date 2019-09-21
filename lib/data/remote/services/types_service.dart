import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/endpoints/status_endpoints.dart';
import 'package:vost/data/remote/endpoints/types_endpoints.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';

class TypesService {
  TypesEndpoints _endpoints;

  TypesService(this._endpoints);

  Observable<BaseListResponse> getTypes() {
    return Observable.fromFuture(_endpoints.getTypes())
        .map((response) => BaseListResponse.fromJson(response.data));
  }
}
