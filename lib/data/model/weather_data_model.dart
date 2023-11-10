import 'package:weathre/data/model/clouds_model.dart';
import 'package:weathre/data/model/coord_model.dart';
import 'package:weathre/data/model/main_model.dart';
import 'package:weathre/data/model/sys_model.dart';
import 'package:weathre/data/model/weather_mode.dart';
import 'package:weathre/data/model/wind_model.dart';
import 'package:weathre/domain/entities/weather_data_entity.dart';

class WeatherDataModel extends WeatherDataEntity {
  WeatherDataModel(
      {required super.coord,
      required super.weather,
      required super.base,
      required super.main,
      required super.visibility,
      required super.wind,
      required super.clouds,
      required super.dt,
      required super.sys,
      required super.timezone,
      required super.id,
      required super.cod, required super.name});
  factory WeatherDataModel.fromJson(Map<String, dynamic> json) {
    return WeatherDataModel(
        coord:
            json["coord"] != null ? CoordModel.fromJson(json['coord']) : null,
        weather: json['weather']!=null?(json["weather"] as List<dynamic>).map((e) =>WeatherModel.fromJson(e) ).toList():null,
        base: json['base'],
        main: json['main']!=null?MainModel.fromJson(json["main"]):null,
        visibility:json ['visibility'],
        wind: json['wind']!=null?WindModel.fromJson(json["wind"]):null,
        clouds:CloudsModel.fromJson(json['clouds']),
        dt: json['dt'],
        sys: json['sys']!=null?SysModel.fromJson(json['sys']):null,
        timezone: json['timezone'],
        id: json['id'],
        cod: json['cod'], name: json["name"]);
  }
}
