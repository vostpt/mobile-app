import 'package:rxdart/rxdart.dart';
import 'package:vost/common/event.dart';
import 'package:vost/domain/managers/occurrences_manager.dart';
import 'package:vost/domain/managers/shared_preferences_manager.dart';
import 'package:vost/domain/models/occurrence_model.dart';
import 'package:vost/presentation/assets/error_messages.dart';
import 'package:vost/presentation/models/home_list_item.dart';
import 'package:vost/presentation/ui/_base/base_bloc.dart';
import 'package:vost/presentation/ui/utils/refresh_bloc_mixin.dart';

class HomeBloc extends BaseBloc with RefreshBlocMixin {
  static final recentsIndex = 0;
  static final followingIndex = 1;

  static final listIndex = 0;
  static final mapIndex = 1;

  final OccurrencesManager _occurrenceManager;
  final SharedPreferencesManager _sharedPreferencesManager;

  /// Event to fetch new data
  var _fetchNewDataSubject = PublishSubject<Event>();

  Sink<Event> get fetchNewDataSink => _fetchNewDataSubject.sink;

  /// Event to verify the favorite items
  var _verifyNewFavoritesSubject = PublishSubject<Event>();

  Sink<Event> get verifyNewFavoritesSink => _verifyNewFavoritesSubject.sink;

  var _occurrencesSubject = BehaviorSubject<List<HomeListItem>>();

  Stream<List<HomeListItem>> get occurrencesStream =>
      _occurrencesSubject.stream;

  /// Event to relay information about type of data: "Recents" or "Folowing"
  var currentTypeOfDataSubject = BehaviorSubject<int>.seeded(0);

  Sink<int> get currentTypeOfDataSink => currentTypeOfDataSubject.sink;

  Stream<int> get currentTypeOfDataStream => currentTypeOfDataSubject.stream;

  /// Event to change type of data
  var _changeTypeOfDataSubject = PublishSubject<Event>();

  Sink<Event> get changeTypeOfDataSink => _changeTypeOfDataSubject.sink;

  /// Event to relay information about current page
  var currentPageSubject = BehaviorSubject<int>.seeded(0);

  Sink<int> get currentPageSink => currentPageSubject.sink;

  Stream<int> get currentPageStream => currentPageSubject.stream;

  /// Event to change page
  var _changePageSubject = PublishSubject<Event>();

  Sink<Event> get changePageSink => _changePageSubject.sink;

  /// Event to fetch data about a specific occurrence
  var _getOccurrenceByIdSubject = PublishSubject<String>();

  Sink<String> get getOccurrenceByIdSink => _getOccurrenceByIdSubject.sink;

  /// Event to stream the data for a getOccurrenceById
  var _getOccurrenceByIdDataSubject = BehaviorSubject<OccurrenceModel>();

  Stream<OccurrenceModel> get getOccurrenceByIdDataStream =>
      _getOccurrenceByIdDataSubject.stream;

  /// Subject that holds the list of occurrences
  var _occurrencesListSubject =
      BehaviorSubject<List<OccurrenceModel>>.seeded([]);

  HomeBloc(this._occurrenceManager, this._sharedPreferencesManager) {
    disposable.add(_fetchNewDataSubject.stream
        .flatMap((_) => _occurrenceManager.getRecentOccurrences())
        .doOnData(_occurrencesListSubject.add)
        .map(mapOccurrencesToHomeItem)
        .map((base) => base.toList())
        .listen(_occurrencesSubject.add, onError: (error) {
      handleOnError(genericErrorMessage);
      handleRefreshErrorWithStackTrace(error, "Refresh Error");
    }));

    disposable.add(_changeTypeOfDataSubject.stream.listen((_) {
      int currentIndex = currentTypeOfDataSubject.value;
      int newIndex = currentIndex == recentsIndex ? mapIndex : recentsIndex;
      currentTypeOfDataSubject.add(newIndex);
    }));

    disposable.add(_changePageSubject.stream.listen((_) {
      int currentIndex = currentPageSubject.value;
      int newIndex = currentIndex == recentsIndex ? mapIndex : recentsIndex;
      currentPageSubject.add(newIndex);
    }));

    disposable.add(_getOccurrenceByIdSubject.stream
        .flatMap(_occurrenceManager.getOccurrenceBySelfLink)
        .listen((data) {
      // for debugging only
      print("Received a new data by id: $data");
      _getOccurrenceByIdDataSubject.add(data);
    },
            onError: (error, stack) =>
                handleOnErrorWithStackTrace(error, "An error has occurred")));

    disposable.add(_verifyNewFavoritesSubject.stream
        .map((_) => mapOccurrencesToHomeItem(_occurrencesListSubject.value))
        .listen(_occurrencesSubject.add));
  }

  List<HomeListItem> mapOccurrencesToHomeItem(
      List<OccurrenceModel> occurrences) {
    // list of favorited occurrences
    final favoritedOccurrences =
        _sharedPreferencesManager.getListOfSavedOccurrences();
    if (favoritedOccurrences.isEmpty) {
      return occurrences
          .map((occurrence) => HomeListItem((b) => b
            ..isFavorite = false
            ..occurrence = occurrence.toBuilder()))
          .toList();
    }

    final occurrencesList = List<HomeListItem>();

    for (var occurrence in occurrences) {
      occurrencesList.add(HomeListItem((b) => b
        ..isFavorite = favoritedOccurrences.contains(occurrence.id)
        ..occurrence = occurrence.toBuilder()));
    }
    return occurrencesList;
  }
}
