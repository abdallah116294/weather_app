import 'package:equatable/equatable.dart';

class SysEntity extends Equatable {
  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;
  SysEntity(
      {required this.type,
      required this.id,
      required this.country,
      required this.sunrise,
      required this.sunset});
  @override
  List<Object?> get props => [
    type,
    id,
    country,
    sunrise,
    sunset
  ];
}
