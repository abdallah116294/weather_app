import 'package:weathre/domain/entities/sys_entity.dart';

class SysModel extends SysEntity {
  SysModel(
      {required super.type,
      required super.id,
      required super.country,
      required super.sunrise,
      required super.sunset});
  factory SysModel.fromJson(Map<String, dynamic> json) {
    return SysModel(
        type: json['type'],
        id: json['id'],
        country: json['country'],
        sunrise: json['sunrise'],
        sunset: json['sunset']);
  }
}
