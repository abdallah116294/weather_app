import 'package:weathre/domain/entities/main_entity.dart';

class MainModel extends MainEntity {
  MainModel(
      {required super.temp,
      required super.feels_like,
      required super.temp_min,
      required super.temp_max,
      required super.pressure,
      required super.humidity});
  factory MainModel.fromJson(Map<String, dynamic> json) {
    return MainModel(
        temp: json['temp'],
        feels_like: json['feels_like'],
        temp_min: json['temp_min'],
        temp_max: json['temp_max'],
        pressure: json['pressure'],
        humidity: json['humidity']);
  }
}
