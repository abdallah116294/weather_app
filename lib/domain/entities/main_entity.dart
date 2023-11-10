import 'package:equatable/equatable.dart';

class MainEntity extends Equatable {
  double? temp;
  double? feels_like;
  double? temp_min;
  double? temp_max;
  int? pressure;
  int? humidity;
  MainEntity(
      {required this.temp,
      required this.feels_like,
      required this.temp_min,
      required this.temp_max,
      required this.pressure,
      required this.humidity});
  @override
  List<Object?> get props => [
        temp,
        feels_like,
        temp_min,
        temp_max,
        pressure,
        humidity,
      ];
}
