import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/attribute_response.dart';
import 'package:vost/domain/models/attribute_model.dart';

class AttributeResponseMapper
    extends Mapper<AttributeResponse, AttributeModel> {
  @override
  AttributeModel map(AttributeResponse value) {
    return AttributeModel((b) => b
      ..code = value.code
      ..name = value.name
      ..createdAt = value.createdAt
      ..startedAt = value.startedAt
      ..endedAt = value.endedAt
      ..latitude = value.latitude
      ..longitude = value.longitude
      ..locality = value.locality
      ..updatedAt = value.updatedAt);
  }
}
