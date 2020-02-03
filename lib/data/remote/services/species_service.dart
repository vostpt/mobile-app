import 'package:vost/data/remote/endpoints/species_endpoints.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';

class SpeciesService {
  final SpeciesEndpoints _endpoints;

  SpeciesService(this._endpoints);

  Stream<BaseListResponse> getSpecies() {
    return Stream.fromFuture(_endpoints.getSpecies())
        .map((response) => BaseListResponse.fromJson(response.data));
  }
}
