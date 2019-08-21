import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/parish_link_response.dart';
import 'package:vost/domain/models/parish_link_model.dart';

class ParishLinkResponseMapper extends Mapper<ParishLinkResponse, ParishLinkModel> {
  @override
  ParishLinkModel map(ParishLinkResponse value) {
    return ParishLinkModel(
        (b) => b
            ..self = value.self
    );
  }
}
