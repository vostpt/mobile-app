import 'package:built_value/built_value.dart';

part 'on_site_means_model.g.dart';

abstract class OnSiteMeansModel implements Built<OnSiteMeansModel, OnSiteMeansModelBuilder> {

  String get remoteId;

  @nullable
  int get groundAssetsInvolved;

  @nullable
  int get groundOperativesInvolved;

  @nullable
  int get aerialAssetsInvolved;

  @nullable
  int get aerialOperativesInvolved;

  @nullable
  String get createdAt;

  @nullable
  String get updatedAt;

  OnSiteMeansModel._();
  factory OnSiteMeansModel([updates(OnSiteMeansModelBuilder b)]) = _$OnSiteMeansModel;
}