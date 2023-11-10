import 'package:weathre/core/api/dio_helper.dart';
import 'package:weathre/data/model/weather_data_model.dart';

abstract class RemoteDataSource {
  Future<WeatherDataModel> getWeather(String cityName);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  DioHelper dioHelper;
  RemoteDataSourceImpl({required this.dioHelper});
  @override
  Future<WeatherDataModel> getWeather(String cityName) async {
    var response = await dioHelper.getWeatherData(cityName);
    return WeatherDataModel.fromJson(response);
  }
}
