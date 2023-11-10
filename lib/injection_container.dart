import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weathre/Peresentation/cubit/get_weather_data_cubit.dart';
import 'package:weathre/core/api/dio_helper.dart';
import 'package:weathre/data/datasource/remote_data_source.dart';
import 'package:weathre/data/repository/repository_impl.dart';
import 'package:weathre/domain/repository/get_weather_data_repository.dart';
import 'package:weathre/domain/usecase/get_weather_data.dart';

final sl = GetIt.instance;
Future<void> init() async {
  //cubit
  sl.registerFactory<GetWeatherCubit>(
      () => GetWeatherCubit(getWeatherData: sl()));
  //usecase
  sl.registerLazySingleton<GetWeatherData>(
      () => GetWeatherData(getWeatherDataRepository: sl()));
  //repositor
  sl.registerLazySingleton<GetWeatherDataRepository>(
      () => GetWeatherDataRepositoryImpl(remoteDataSource: sl()));
  //data source
  sl.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(dioHelper: sl()));
  //dio
  sl.registerLazySingleton(() => DioHelper(sl()));
  sl.registerLazySingleton(() => Dio());
}
