import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/types_service.dart';
import 'package:vost/domain/mappers/type_mapper.dart';
import 'package:vost/domain/models/type_model.dart';

class TypesManager {
  TypesService _typesService;
  TypeListResponseMapper _typesmapper;

  TypesManager(this._typesService, this._typesmapper);

  Observable<List<TypeModel>> getTypes() {
    return _typesService.getTypes().map(_typesmapper.map);
  }
}
