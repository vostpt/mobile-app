import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/domain/models/link_model.dart';

class LinkResponseMapper extends Mapper<LinkResponse, LinkModel> {
  @override
  LinkModel map(LinkResponse value) {
    return LinkModel((b) => b
      ..first = value.first
      ..last = value.last
      ..next = value.next
      ..self = value.self);
  }
}
