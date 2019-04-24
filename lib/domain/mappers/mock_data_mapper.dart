import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/mock_data_remote.dart';
import 'package:vost/domain/models/mock_data.dart';

class MockDataRemoteMapper extends Mapper<MockDataRemote, MockData> {
  @override
  MockData map(MockDataRemote value) {
    return MockData((b) => b
      ..completed = value.completed
      ..id = value.id
      ..userId = value.userId
      ..title = value.title);
  }
}
