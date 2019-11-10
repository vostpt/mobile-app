import 'package:rxdart/rxdart.dart';
import 'package:vost/domain/managers/occurrences_manager.dart';
import 'package:vost/domain/models/occurrence_model.dart';
import 'package:vost/presentation/ui/_base/base_bloc.dart';

class DetailsBloc extends BaseBloc {
  /// Event to fetch data about a specific occurrence
  var _getOccurrenceByIdSubject = PublishSubject<String>();

  Sink<String> get getOccurrenceByIdSink => _getOccurrenceByIdSubject.sink;

  /// Event to stream the data for a getOccurrenceById
  var _getOccurrenceByIdDataSubject = BehaviorSubject<OccurrenceModel>();

  Stream<OccurrenceModel> get getOccurrenceByIdDataStream =>
      _getOccurrenceByIdDataSubject.stream;

  DetailsBloc(OccurrencesManager manager, String selfLink) {
    disposable.add(manager.getOccurrenceBySelfLink(selfLink).listen((data) {
      // for debugging only
      print("Received a new data by id: $data");
      _getOccurrenceByIdDataSubject.add(data);
    },
        onError: (error, stack) =>
            handleOnErrorWithStackTrace(error, "An error has occurred")));
  }
}
