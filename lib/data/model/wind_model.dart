import 'package:weathre/domain/entities/wind_entity.dart';

class WindModel extends WindEntity {
  WindModel({required super.speed, required super.deg});
  factory WindModel.fromJson(Map<String, dynamic> json) {
    return WindModel(speed: json['speed'], deg: json['deg']);
  }
}
