import 'package:equatable/equatable.dart';
import 'package:weathre/domain/entities/clouds_entity.dart';
import 'package:weathre/domain/entities/coord_entity.dart';
import 'package:weathre/domain/entities/main_entity.dart';
import 'package:weathre/domain/entities/sys_entity.dart';
import 'package:weathre/domain/entities/weather_entity.dart';
import 'package:weathre/domain/entities/wind_entity.dart';

class WeatherDataEntity extends Equatable {
  CoordEntity? coord;
  List<WeatherEntity>? weather;
  String? base;
  MainEntity? main;
  int? visibility;
  WindEntity? wind;
  CloudsEntity clouds;
  int? dt;
  SysEntity? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;
  @override
  WeatherDataEntity({
  required this.coord,
 required this.weather,
 required this.base,
 required this.main,
 required this.visibility,
 required this.wind,
 required this.clouds,
 required this.dt,
 required this.sys,
 required this.timezone,
 required this.id,
 required this.cod,
 required this.name,
  });
 
  List<Object?> get props => [
    coord,
    weather,
    base,
    main,
    visibility,
    wind,
    clouds,
    dt,
    sys,
    timezone,
    id,
    cod
  ];
}
