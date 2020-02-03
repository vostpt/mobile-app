import 'package:vost/data/remote/services/types_service.dart';
import 'package:vost/domain/mappers/type_mapper.dart';
import 'package:vost/domain/models/type_model.dart';

class TypesManager {
  final TypesService _typesService;
  final TypeListResponseMapper _typesmapper;

  TypesManager(this._typesService, this._typesmapper);

  Stream<List<TypeModel>> getTypes() {
    return _typesService.getTypes().map(_typesmapper.map);
  }
}
