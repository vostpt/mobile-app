library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:vost/data/remote/models/response/attribute_response.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';
import 'package:vost/data/remote/models/response/base_response.dart';
import 'package:vost/data/remote/models/response/link_response.dart';
import 'package:vost/data/remote/models/response/meta_response.dart';
import 'package:vost/data/remote/models/response/mock_data_remote.dart';
import 'package:vost/data/remote/models/response/data_response.dart';
import 'package:vost/data/remote/models/response/relationship_district_response.dart';
import 'package:vost/data/remote/models/response/relationship_family_response.dart';
import 'package:vost/data/remote/models/response/relationship_parish_response.dart';
import 'package:vost/data/remote/models/response/relationship_response.dart';
import 'package:vost/data/remote/models/response/relationship_species_response.dart';
import 'package:vost/data/remote/models/response/relationship_status_response.dart';
import 'package:vost/data/remote/models/response/relationship_type_response.dart';

part 'serializers.g.dart';

/// Class to be used for built_value serialization
///
/// We need to declare a list of all the classes to be serialized  and initialize a
/// standard serializer to deal with them
/// In order to generate the '.g' classes, we need to run the following in the terminal:
/// `flutter packages pub run build_runner watch --delete-conflicting-outputs`
///
/// When adding a new type, if it extends `BaseResponse`, the following must be added in the `serializers` variable:
///
/// ```
///    (_$serializers.toBuilder()
///    //other builders
///       ..addBuilderFactory(FullType(BaseResponse, const [const FullType(NewType)]),
///         () => new BaseResponse<NewType>())
///    ..addPlugin(StandardJsonPlugin()))
///     .build();
/// ```
///
/// If the data comes in form of a list, the following must be added:
///
/// ```
///    (_$serializers.toBuilder()
///    //other builders
///          ..addBuilderFactory(
///          FullType(BaseListResponse, const [const FullType(ParishResponse)]),
///          () => new BaseListResponseBuilder<ParishResponse>())
///      ..addBuilderFactory(FullType(BuiltList, const [const FullType(ParishResponse)]),
///          () => new ListBuilder<ParishResponse>())
///    ..addPlugin(StandardJsonPlugin()))
///     .build();
/// ```
@SerializersFor(const [
  MockDataRemote,
  BaseResponse,
  LinkResponse,
  MetaResponse,
  AttributeResponse,
  DataResponse,
  BaseListResponse,
  RelationshipDistrictResponse,
  RelationshipFamilyResponse,
  RelationshipParishResponse,
  RelationshipResponse,
  RelationshipSpeciesResponse,
  RelationshipStatusResponse,
  RelationshipTypeResponse
])
Serializers serializers = _$serializers;

Serializers standardSerializers = (serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin()))
    .build();