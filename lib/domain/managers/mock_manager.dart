import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/mock_service.dart';
import 'package:vost/domain/mappers/mock_data_mapper.dart';
import 'package:vost/domain/models/mock_data.dart';

class MockManager {
  MockService _mockService;
  MockDataRemoteMapper _mockMapper;

  MockManager(this._mockService, this._mockMapper);

  Observable<MockData> getMockData() {
    return _mockService.getMockData()
        .map(_mockMapper.map);
  }
}