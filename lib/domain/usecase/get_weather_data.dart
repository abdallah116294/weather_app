import 'package:dartz/dartz.dart';
import 'package:weathre/core/error/failure.dart';
import 'package:weathre/core/usecase/usecase.dart';
import 'package:weathre/domain/entities/weather_data_entity.dart';
import 'package:weathre/domain/repository/get_weather_data_repository.dart';

class GetWeatherData implements UseCase<WeatherDataEntity, String> {
  GetWeatherDataRepository getWeatherDataRepository;
  GetWeatherData({required this.getWeatherDataRepository});
  @override
  Future<Either<Failure, WeatherDataEntity>> call(params) =>
      getWeatherDataRepository.gtWeather(params);
}
