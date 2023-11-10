import 'package:equatable/equatable.dart';

class WindEntity extends Equatable {
  double? speed;
  int? deg;
  WindEntity({required this.speed, required this.deg});
  @override
  // TODO: implement props
  List<Object?> get props => [
    speed,
    deg
  ];
}
