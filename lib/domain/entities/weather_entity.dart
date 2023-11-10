import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  int? id;
  String? main;
  String? description;
  String? icon;
  WeatherEntity(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});
  @override
  List<Object?> get props => [
    id,
    main,
    description,
    icon,
  ];
}
