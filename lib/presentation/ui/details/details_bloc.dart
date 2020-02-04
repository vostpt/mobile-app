import 'package:rxdart/rxdart.dart';
import 'package:vost/common/event.dart';
import 'package:vost/domain/managers/occurrences_manager.dart';
import 'package:vost/domain/managers/shared_preferences_manager.dart';
import 'package:vost/domain/models/occurrence_model.dart';
import 'package:vost/presentation/ui/_base/base_bloc.dart';

class DetailsBloc extends BaseBloc {
  /// Event to stream the data for a getOccurrenceById
  var _getOccurrenceByIdDataSubject = BehaviorSubject<OccurrenceModel>();

  Stream<OccurrenceModel> get getOccurrenceByIdDataStream =>
      _getOccurrenceByIdDataSubject.stream;

  /// Is occurrence Favorited?
  var _isOccurrenceFavoriteSubject = BehaviorSubject<FavoriteIconState>();
  Stream<FavoriteIconState> get isOccurrenceFavoriteStream =>
      _isOccurrenceFavoriteSubject.stream;

  /// Save New Occurrence State
  var _changeFavoriteStateSubject = PublishSubject<Event>();
  Sink<Event> get changeFavoriteStateSink => _changeFavoriteStateSubject.sink;

  DetailsBloc(
      {SharedPreferencesManager sharedPreferencesManager,
      OccurrencesManager manager,
      String selfLink,
      String occurrenceId}) {
    disposable.add(manager.getOccurrenceBySelfLink(selfLink).listen((data) {
      // for debugging only
      print("Received a new data by id: $data");
      _getOccurrenceByIdDataSubject.add(data);
    },
        onError: (error, stack) =>
            handleOnErrorWithStackTrace(error, "An error has occurred")));

    disposable.add(_changeFavoriteStateSubject.stream
        .doOnData(
            (_) => _isOccurrenceFavoriteSubject.add(FavoriteIconState.LOADING))
        .flatMap((_) => Stream.fromFuture(
            sharedPreferencesManager.updateFavoritedOccurrence(occurrenceId)))
        .listen((_) => _isOccurrenceFavoriteSubject
            .add(isFavorited(sharedPreferencesManager, occurrenceId))));

    _isOccurrenceFavoriteSubject
        .add(isFavorited(sharedPreferencesManager, occurrenceId));
  }

  FavoriteIconState isFavorited(
      SharedPreferencesManager manager, String occurrenceId) {
    return manager.getListOfSavedOccurrences().contains(occurrenceId)
        ? FavoriteIconState.FAVORITE
        : FavoriteIconState.NOT_FAVORITE;
  }
}

enum FavoriteIconState { FAVORITE, NOT_FAVORITE, LOADING }
