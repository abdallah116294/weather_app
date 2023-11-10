import 'package:dartz/dartz.dart';
import 'package:weathre/core/error/failure.dart';
import 'package:weathre/domain/entities/weather_data_entity.dart';

abstract class GetWeatherDataRepository {
  Future<Either<Failure, WeatherDataEntity>> gtWeather(String cityname);
}
