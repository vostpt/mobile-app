import 'package:vost/data/remote/endpoints/mock_endpoints.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/models/response/mock_data_remote.dart';


class MockService {
  MockEndpoints _endpoints;

  MockService(this._endpoints);

  Observable<MockDataRemote> getMockData() {
    return Observable.fromFuture(_endpoints.getMockData())
        .map((response) =>
        MockDataRemote.fromJson(response.data));
  }
}