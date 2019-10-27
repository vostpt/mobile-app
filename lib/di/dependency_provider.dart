import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vost/constants.dart';
import 'package:vost/data/remote/endpoints/county_endpoints.dart';
import 'package:vost/data/remote/endpoints/district_endpoints.dart';
import 'package:vost/data/remote/endpoints/family_endpoints.dart';
import 'package:vost/data/remote/endpoints/occurrences_endpoints.dart';
import 'package:vost/data/remote/endpoints/parish_endpoints.dart';
import 'package:vost/data/remote/endpoints/species_endpoints.dart';
import 'package:vost/data/remote/endpoints/status_endpoints.dart';
import 'package:vost/data/remote/endpoints/types_endpoints.dart';
import 'package:vost/data/remote/models/_base/parser.dart';
import 'package:vost/data/remote/services/county_service.dart';
import 'package:vost/data/remote/services/district_service.dart';
import 'package:vost/data/remote/services/family_service.dart';
import 'package:vost/data/remote/services/occurrences_service.dart';
import 'package:vost/data/remote/services/parish_service.dart';
import 'package:vost/data/remote/services/species_service.dart';
import 'package:vost/data/remote/services/status_service.dart';
import 'package:vost/data/remote/services/types_service.dart';
import 'package:vost/di/network_dependencies.dart';
import 'package:vost/domain/managers/county_manager.dart';
import 'package:vost/domain/managers/district_manager.dart';
import 'package:vost/domain/managers/family_manager.dart';
import 'package:vost/domain/managers/occurrences_manager.dart';
import 'package:vost/domain/managers/parish_manager.dart';
import 'package:vost/domain/managers/species_manager.dart';
import 'package:vost/domain/managers/status_manager.dart';
import 'package:vost/domain/managers/types_manager.dart';
import 'package:vost/domain/mappers/county_mapper.dart';
import 'package:vost/domain/mappers/district_mapper.dart';
import 'package:vost/domain/mappers/family_mapper.dart';
import 'package:vost/domain/mappers/link_mapper.dart';
import 'package:vost/domain/mappers/occurrence_mapper.dart';
import 'package:vost/domain/mappers/parish_mapper.dart';
import 'package:vost/domain/mappers/species_mapper.dart';
import 'package:vost/domain/mappers/status_mapper.dart';
import 'package:vost/domain/mappers/type_mapper.dart';
import 'package:vost/presentation/ui/contributors/contributors_bloc.dart';
import 'package:vost/presentation/ui/home/home_bloc.dart';

/// As an [InheritedWidget] this class will provide its childs the objects it hold
///
/// By accessing [of] and providing a [BuildContext] we can access, for example, the [Config] instance.
/// Usage: `var provider = DependencyProvider.of(context);`
class DependencyProvider extends InheritedWidget {
  ParishManager _parishManager;
  CountyManager _countyManager;
  DistrictManager _districtManager;
  StatusManager _statusManager;
  TypesManager _typesManager;
  SpeciesManager _speciesManager;
  FamilyManager _familyManager;
  OccurrencesManager _occurrencesManager;

  DependencyProvider({
    Key key,
    Widget child,
  }) : super(key: key, child: child);

  HomeBloc _homeBloc;

  HomeBloc getHomeBloc({bool forceCreation = false}) {
    if (_homeBloc == null || forceCreation) {
      _homeBloc = HomeBloc(_occurrencesManager);
    }
    return _homeBloc;
  }

  ContributorsBloc _contributorsBloc;

  ContributorsBloc getContributorsBloc({bool forceCreation = false}) {
    if (_contributorsBloc == null || forceCreation) {
      _contributorsBloc = ContributorsBloc();
    }
    return _contributorsBloc;
  }

  /// Initializes app dependencies,
  Future<void> initialize() async {
    // Storage Dependencies
    var sharedPrefences = await SharedPreferences.getInstance();

    // Interceptors
    var loggingInterceptor = getLoggingInterceptor();
    var errorInterceptor = getErrorInterceptor(loggingInterceptor);
    var responseInterceptor = getResponseInterceptor(loggingInterceptor);
    var requestInterceptor = getRequestInterceptor(loggingInterceptor);

    // network dependencies
    var dioOptions =
        createDioOptions(baseUrlProd, connectionTimeout, connectionReadTimeout);
    var dio = await createDio(
        dioOptions, errorInterceptor, responseInterceptor, requestInterceptor);
    var parser = Parser();

    // endpoints
    var parishEndpoints = ParishEndpoints(dio);
    var countyEndpoints = CountyEndpoints(dio);
    var districtEndpoints = DistrictEndpoints(dio);
    var statusEndpoints = StatusEndpoints(dio);
    var typesEndpoints = TypesEndpoints(dio);
    var speciesEndpoints = SpeciesEndpoints(dio);
    var familyEndpoints = FamilyEndpoints(dio);
    var occurrenceEndpoints = OccurrencesEndpoints(dio);

    // Services
    var parishService = ParishService(parishEndpoints);
    var countyService = CountyService(countyEndpoints);
    var districtService = DistrictService(districtEndpoints);
    var statusService = StatusService(statusEndpoints);
    var typesService = TypesService(typesEndpoints);
    var speciesService = SpeciesService(speciesEndpoints);
    var familyService = FamilyService(familyEndpoints);
    var occurrenceService = OccurrencesService(occurrenceEndpoints);

    // Mappers
    var linkResponseMapper = LinkResponseMapper();
    var parishListResponseMapper = ParishListResponseMapper(linkResponseMapper);
    var parishResponseMapper = ParishResponseMapper(linkResponseMapper);
    var countyListResponseMapper = CountyListResponseMapper(linkResponseMapper);
    var countyResponseMapper = CountyResponseMapper(linkResponseMapper);
    var districtListResponseMapper =
        DistrictListResponseMapper(linkResponseMapper);
    var districtResponseMapper = DistrictResponseMapper(linkResponseMapper);
    var familyListResponseMapper = FamilyListResponseMapper(linkResponseMapper);
    var familyResponseMapper = FamilyResponseMapper(linkResponseMapper);
    var occurrenceListResponseMapper =
        OccurrenceListResponseMapper(linkResponseMapper);
    var occurrenceResponseMapper = OccurrenceResponseMapper(linkResponseMapper);
    var statusListResponseMapper = StatusListResponseMapper(linkResponseMapper);
    var statusResponseMapper = StatusResponseMapper(linkResponseMapper);
    var typeListResponseMapper = TypeListResponseMapper(linkResponseMapper);
    var typeResponseMapper = TypeResponseMapper(linkResponseMapper);
    var speciesListResponseMapper =
        SpeciesListResponseMapper(linkResponseMapper);
    var speciesResponseMapper = SpeciesResponseMapper(linkResponseMapper);

    // Managers
    _parishManager = ParishManager(parishService, parishListResponseMapper);
    _countyManager = CountyManager(countyService, countyListResponseMapper);
    _districtManager =
        DistrictManager(districtService, districtListResponseMapper);
    _statusManager = StatusManager(statusService, statusListResponseMapper);
    _typesManager = TypesManager(typesService, typeListResponseMapper);
    _speciesManager = SpeciesManager(speciesService, speciesListResponseMapper);
    _familyManager = FamilyManager(familyService, familyListResponseMapper);
    _occurrencesManager =
        OccurrencesManager(occurrenceService, occurrenceListResponseMapper);
  }

  /// Since we just want to creat the dependencies once, at the start of the app, we won't need
  /// update this widget
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static DependencyProvider of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(DependencyProvider)
        as DependencyProvider);
  }
}
