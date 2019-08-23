import 'package:vost/common/mapper.dart';
import 'package:vost/data/remote/models/response/meta_response.dart';
import 'package:vost/domain/models/meta_model.dart';

class MetaResponseMapper extends Mapper<MetaResponse, MetaModel> {
  @override
  MetaModel map(MetaResponse value) {
    return MetaModel((b) => b
        ..items = value.items
        ..total = value.total
    );
  }
}
