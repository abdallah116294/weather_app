import 'package:weathre/domain/entities/coord_entity.dart';

class CoordModel extends CoordEntity {
  CoordModel({required super.lon, required super.lat});
  factory CoordModel.fromJson(Map<String, dynamic> json) {
    return CoordModel(lon: json["lon"], lat: json['lat']);
  }
}
