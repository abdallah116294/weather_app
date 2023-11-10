import 'package:equatable/equatable.dart';

class CoordEntity extends Equatable {
  double? lon;
  double? lat;
  CoordEntity({required this.lon, required this.lat});
  @override
 
  List<Object?> get props => [
    lon,
    lat
  ];
}
