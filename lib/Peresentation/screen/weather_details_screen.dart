import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weathre/Peresentation/cubit/get_weather_data_cubit.dart';
import 'package:weathre/Peresentation/cubit/get_weather_data_state.dart';
import 'package:weathre/Peresentation/widgets/information_widget.dart';
import 'package:weathre/injection_container.dart' as di;

class WeatherDetailsScreen extends StatelessWidget {
  const WeatherDetailsScreen({super.key, required this.cityName});
  final String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff13131A),
      body: BlocProvider(
        create: (context) => di.sl<GetWeatherCubit>()..getData(cityName),
        child: BlocBuilder<GetWeatherCubit, GetWeatherDataState>(
            builder: (context, state) {
          if (state is GetWeatherDataIsLoadingState) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.blueAccent,),
            );
          } else if (state is GetWeatherDataLoadedState) {
            return InformationWidget(
              cityName: state.weatherDataEntity.name.toString(),
              tem_min: state.weatherDataEntity.main!.temp_min!,
              wind: state.weatherDataEntity.weather!.first.main.toString(),
              description:
                  state.weatherDataEntity.weather!.first.description.toString(),
              windSpeed: state.weatherDataEntity.wind!.speed!.toDouble(),
              humidity: state.weatherDataEntity.main!.humidity!.toInt(),
            );
          }else if (state is GetWeatherDataError){
            return const Column(
               crossAxisAlignment: CrossAxisAlignment.center, 
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('City Name Unknow 🤷‍♂️',style: TextStyle(fontSize: 30,color: Colors.white ),)),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          );
        }),
      ),
    );
  }
}
