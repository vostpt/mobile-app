import 'package:rxdart/rxdart.dart';
import 'package:vost/common/event.dart';
import 'package:vost/domain/managers/occurrences_manager.dart';
import 'package:vost/domain/models/occurrence_model.dart';
import 'package:vost/presentation/ui/_base/base_bloc.dart';

class OccurrencesListBloc extends BaseBloc {
  OccurrencesManager _countyManager;

  /// Event to fetch new data
  var _fetchNewDataSubject = PublishSubject<Event>();

  Sink<Event> get fetchNewDataSink => _fetchNewDataSubject.sink;

  /// Event to relay MockData information to the UI
  var _mockDataSubject = BehaviorSubject<List<OccurrenceModel>>();

  Stream<List<OccurrenceModel>> get mockDataStream => _mockDataSubject.stream;

  OccurrencesListBloc(this._countyManager) {
    disposable.add(_fetchNewDataSubject.stream
        .flatMap((_) => _countyManager.getRecentOccurrences())
        .map((base) => base.toList())
        .listen(_mockDataSubject.add));
  }
}
