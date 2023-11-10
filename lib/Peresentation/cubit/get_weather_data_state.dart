import 'package:equatable/equatable.dart';
import 'package:weathre/domain/entities/weather_data_entity.dart';

sealed class GetWeatherDataState extends Equatable {
  const GetWeatherDataState();

  @override
  List<Object> get props => [];
}

final class GetWeatherDataInitial extends GetWeatherDataState {}

final class GetWeatherDataIsLoadingState extends GetWeatherDataState {}

final class GetWeatherDataLoadedState extends GetWeatherDataState {
  WeatherDataEntity weatherDataEntity;
  GetWeatherDataLoadedState({required this.weatherDataEntity});
}

final class GetWeatherDataError extends GetWeatherDataState {
  final String msg;
  const GetWeatherDataError({required this.msg});
}
