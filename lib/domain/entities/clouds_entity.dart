import 'package:equatable/equatable.dart';

class CloudsEntity extends Equatable {
  int? all;
  CloudsEntity({required this.all});
  @override
  List<Object?> get props => [
    all
  ];
}
