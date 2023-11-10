import 'package:dartz/dartz.dart';
import 'package:weathre/core/error/failure.dart';
import 'package:weathre/data/datasource/remote_data_source.dart';
import 'package:weathre/domain/entities/weather_data_entity.dart';
import 'package:weathre/domain/entities/weather_entity.dart';
import 'package:weathre/domain/repository/get_weather_data_repository.dart';

class GetWeatherDataRepositoryImpl extends GetWeatherDataRepository {
  RemoteDataSource remoteDataSource;
  GetWeatherDataRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, WeatherDataEntity>> gtWeather(String cityname) async {
    try {
      var response = await remoteDataSource.getWeather(cityname);
      return Right(response);
    } catch (error) {
      return Left(ServerFailure());
    }
  }
}
