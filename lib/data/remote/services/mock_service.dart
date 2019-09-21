import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/endpoints/mock_endpoints.dart';
import 'package:vost/data/remote/models/_base/parser.dart';
import 'package:vost/data/remote/models/response/mock_data_remote.dart';


class MockService {
  MockEndpoints _endpoints;
  Parser _parser;

  MockService(this._endpoints, this._parser);

  Observable<MockDataRemote> getMockData() {
    return Observable.fromFuture(_endpoints.getMockData())
        .map((response) =>
        _parser.parseJsonObject(response.data, MockDataRemote.serializer));
  }
}