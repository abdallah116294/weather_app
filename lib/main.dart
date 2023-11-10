import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weathre/Peresentation/cubit/get_weather_data_cubit.dart';
import 'package:weathre/Peresentation/screen/get_started_screen.dart';
import 'injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>di.sl<GetWeatherCubit>())
        ],
        child: const MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          home: GetStartScreen(),
        ));
  }
}
