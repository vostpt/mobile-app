import 'package:rxdart/rxdart.dart';
import 'package:vost/common/event.dart';
import 'package:vost/constants.dart';
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

  /// Event to fetch new Favorites List
  var _fetchNewFavoritesListSubject = PublishSubject<Event>();
  Sink<Event> get fetchNewFavoritesListSink =>
      _fetchNewFavoritesListSubject.sink;

  /// Event to verify the favorite items
  var _verifyNewFavoritesSubject = PublishSubject<Event>();

  Sink<Event> get verifyNewFavoritesSink => _verifyNewFavoritesSubject.sink;

  /// List of Recent Occurrences
  var _occurrencesSubject = BehaviorSubject<List<HomeListItem>>();

  Stream<List<HomeListItem>> get occurrencesStream =>
      _occurrencesSubject.stream;

  /// List of Favorited Occurrences
  var _favoritedOccurrencesSubject = BehaviorSubject<List<HomeListItem>>();
  Stream<List<HomeListItem>> get favoritedOccurrencesStream =>
      _favoritedOccurrencesSubject.stream;

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
  var _listOfRecentOccurrencesSubject =
      BehaviorSubject<List<OccurrenceModel>>.seeded([]);

  /// Subject that holds the list of favorite occurrences
  var _listOfFavoriteOccurrencesSubject =
      BehaviorSubject<List<OccurrenceModel>>.seeded([]);

  /// Subject that will fetch additional pages
  var _fetchNextPageSubject = PublishSubject<Event>();
  Sink<Event> get fetchNextPageSink => _fetchNextPageSubject.sink;

  /// Subject that keeps track of the page number
  var _pageNumberSubject = BehaviorSubject<int>.seeded(1);

  //Events to manage if full occurrence window is open
  var openOccurrence = BehaviorSubject<bool>.seeded(false);
  Sink<bool> get openOccurrenceSink => openOccurrence.sink;
  Stream<bool> get openOccurrenceStream => openOccurrence.stream;

  //Events to manage if there is a selected Occurence
  var selectedOccurrence = BehaviorSubject<OccurrenceModel>.seeded(null);
  Sink<OccurrenceModel> get selectedOccurrenceSink => selectedOccurrence.sink;
  Stream<OccurrenceModel> get selectedOccurrenceStream =>
      selectedOccurrence.stream;

  HomeBloc(this._occurrenceManager, this._sharedPreferencesManager) {
    disposable.add(_fetchNewDataSubject.stream
        .doOnData((_) => showLoading())
        .doOnData((_) => _pageNumberSubject.add(1))
        .flatMap((_) => _occurrenceManager.getRecentOccurrences())
        .doOnData(_listOfRecentOccurrencesSubject.add)
        .map(mapOccurrencesToHomeItem)
        .map((base) => base.toList())
        .listen((data) {
      _occurrencesSubject.add(data);
      hideLoading();
    }, onError: (error) {
      hideLoading();
      handleOnError(genericErrorMessage);
      handleRefreshErrorWithStackTrace(error, "Refresh Error");
    }));

    disposable.add(_fetchNextPageSubject.stream
        .doOnData((_) => showLoading())
        // increase the page number
        .doOnData((_) => _pageNumberSubject.add(_pageNumberSubject.value + 1))
        .flatMap((_) => _occurrenceManager.getOccurrences(
            pageSize: pageSize, pageNumber: _pageNumberSubject.value))
        .map((data) =>
            _combineOccurrences(_listOfRecentOccurrencesSubject.value, data))
        .map(mapOccurrencesToHomeItem)
        .map((base) => base.toList())
        .listen((data) {
      _occurrencesSubject.add(data);
      hideLoading();
    }, onError: (error) {
      hideLoading();
      handleOnError(genericErrorMessage);
      handleRefreshErrorWithStackTrace(error, "Error");
    }));

    disposable.add(_fetchNewFavoritesListSubject.stream
        .map((_) => _sharedPreferencesManager.getListOfSavedOccurrences())
        .flatMap<List<OccurrenceModel>>((ids) => (ids != null && ids.isNotEmpty)
            ? _occurrenceManager.getOccurrences(ids: ids)
            : Stream<List<String>>.empty())
        .doOnData(_listOfFavoriteOccurrencesSubject.add)
        .map(mapOccurrencesToHomeItem)
        .map((base) => base.toList())
        .listen(_favoritedOccurrencesSubject.add, onError: (error) {
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
        .map((_) =>
            mapOccurrencesToHomeItem(_listOfRecentOccurrencesSubject.value))
        .listen(_occurrencesSubject.add));

    disposable.add(_verifyNewFavoritesSubject.stream
        .listen((_) => _fetchNewFavoritesListSubject.add(Event())));

    _fetchNewDataSubject.add(Event());
    _fetchNewFavoritesListSubject.add(Event());
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

  /// Thiw method will prevent any duplicates from being found on the list
  List<OccurrenceModel> _combineOccurrences(
      List<OccurrenceModel> oldValues, List<OccurrenceModel> newValues) {
    for (var value in newValues) {
      if (!oldValues.contains(value)) {
        oldValues.add(value);
      }
    }
    return oldValues;
  }

  @override
  void dispose() {
    _fetchNewDataSubject.close();
    fetchNewDataSink.close();
    _fetchNewFavoritesListSubject.close();
    fetchNewFavoritesListSink.close();
    _verifyNewFavoritesSubject.close();
    verifyNewFavoritesSink.close();
    _occurrencesSubject.close();
    _favoritedOccurrencesSubject.close();
    currentTypeOfDataSubject.close();
    currentTypeOfDataSink.close();
    _changeTypeOfDataSubject.close();
    currentPageSubject.close();
    currentPageSink.close();
    _changePageSubject.close();
    changePageSink.close();
    _getOccurrenceByIdSubject.close();
    getOccurrenceByIdSink.close();
    _getOccurrenceByIdDataSubject.close();
    _listOfRecentOccurrencesSubject.close();
    _listOfFavoriteOccurrencesSubject.close();
    _fetchNextPageSubject.close();
    fetchNextPageSink.close();
    _pageNumberSubject.close();
    openOccurrence.close();
    openOccurrenceSink.close();
    selectedOccurrence.close();
    selectedOccurrenceSink.close();
    super.dispose();
  }
}
