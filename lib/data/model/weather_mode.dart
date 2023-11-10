import 'package:weathre/domain/entities/weather_entity.dart';

class WeatherModel extends WeatherEntity {
  WeatherModel(
      {required super.id,
      required super.main,
      required super.description,
      required super.icon});
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
        id: json["id"],
        main: json['main'],
        description: json['description'],
        icon: json['icon']);
  }
}
