import 'package:core/api/weather/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "location.freezed.dart";

@freezed
@immutable
class Location with _$Location {
  const factory Location({
    required String name,
    @Default("") String region,
  }) = _Location;

  @override
  String toString() => '$name, $region';

  factory Location.fromResponse(LocationResponse location) =>
      Location(name: location.name, region: location.region);
}
