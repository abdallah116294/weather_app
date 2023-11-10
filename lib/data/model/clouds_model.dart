import 'package:weathre/domain/entities/clouds_entity.dart';

class CloudsModel extends CloudsEntity {
  CloudsModel({required super.all});
  factory CloudsModel.fromJson(Map<String, dynamic> json) {
    return CloudsModel(all: json['all']);
  }
}
