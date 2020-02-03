import 'package:vost/data/remote/endpoints/types_endpoints.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';

class TypesService {
  final TypesEndpoints _endpoints;

  TypesService(this._endpoints);

  Stream<BaseListResponse> getTypes() {
    return Stream.fromFuture(_endpoints.getTypes())
        .map((response) => BaseListResponse.fromJson(response.data));
  }
}
