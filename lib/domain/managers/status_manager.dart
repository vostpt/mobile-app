import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/services/status_service.dart';
import 'package:vost/domain/mappers/status_mapper.dart';
import 'package:vost/domain/models/status_model.dart';

class StatusManager {
  final StatusService _statusService;
  final StatusListResponseMapper _statusMapper;

  StatusManager(this._statusService, this._statusMapper);

  Observable<List<StatusModel>> getStatuses() {
    return _statusService.getStatuses().map(_statusMapper.map);
  }
}
