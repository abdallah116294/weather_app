import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weathre/Peresentation/cubit/get_weather_data_state.dart';
import 'package:weathre/core/error/failure.dart';
import 'package:weathre/domain/entities/weather_data_entity.dart';
import 'package:weathre/domain/usecase/get_weather_data.dart';

class GetWeatherCubit extends Cubit<GetWeatherDataState> {
  GetWeatherCubit({required this.getWeatherData})
      : super(GetWeatherDataInitial());
  GetWeatherData getWeatherData;
  static GetWeatherCubit get(context) => BlocProvider.of(context);
  Future<void> getData(String cityName) async {
    emit(GetWeatherDataIsLoadingState());
    try {
      Either<Failure, WeatherDataEntity> weatherData =
          await getWeatherData.call(cityName);
      emit(weatherData.fold(
          (failure) => GetWeatherDataError(msg: _mapFailureToMsg(failure)),
          (weather) => GetWeatherDataLoadedState(weatherDataEntity: weather)));
    } catch (error) {
      GetWeatherDataError(msg: error.toString());
    }
  }

  List<String> image = [
    'assets/images/clear.png',
    'assets/images/few_clouds.png',
    'assets/images/03d@2x.png',
    'assets/images/04d@2x.png',
    'assets/images/09d@2x.png',
    'assets/images/10d@2x.png',
    'assets/images/11d@2x.png',
    'assets/images/13d@2x.png',
    'assets/images/50d@2x.png',
  ];
  String chooseImage(String description) {
    if (description == "clear sky") {
      return image[0];
    }
    if (description == "few clouds") {
      return image[1];
    }
    if (description == "scattered clouds") {
      return image[2];
    }
    if (description == "broken clouds") {
      return image[3];
    }
    if (description == "shower rain") {
      return image[4];
    }
    if (description == "rain") {
      return image[5];
    }
    if (description == "thunderstorm") {
      return image[6];
    }
    if (description == "snow") {
      return image[7];
    }
    if (description == "mist") {
      return image[8];
    }
    return image[4];

    /// return image;
  }

  String _mapFailureToMsg(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return "ServerFailure";
      case CacheFailure:
        return "CacheFailure";

      default:
        return "unexpectedError";
    }
  }
}
