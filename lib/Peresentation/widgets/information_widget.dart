import 'package:flutter/material.dart';
import 'package:weathre/Peresentation/cubit/get_weather_data_cubit.dart';
import 'package:weathre/Peresentation/widgets/mor_date_widget.dart';

class InformationWidget extends StatefulWidget {
  const InformationWidget(
      {super.key,
      required this.cityName,
      required this.tem_min,
      required this.wind,
      required this.description,
      required this.windSpeed,
      required this.humidity});
  final String cityName;
  final double tem_min;
  final String wind;
  final String description;
  final double windSpeed;
  final int humidity;

  @override
  State<InformationWidget> createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget> {
  @override
  Widget build(BuildContext context) {
    double temp_main = widget.tem_min - 273.15;
    //String image = '';

    return Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/image.png"),
                  fit: BoxFit.fill)),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Spacer(flex: 3,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.cityName,
                          style: const TextStyle(fontSize: 48, color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${temp_main.round()}ºc",
                            style: const TextStyle(
                                fontSize: 48, color: Colors.white),
                          ),
                          Image(image: AssetImage(GetWeatherCubit.get(context).chooseImage(widget.description))),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          widget.wind,
                          style:
                              const TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MorDataWidget(
            iconData: Icons.thermostat,
            titel: "${temp_main.round()}ºc",
            title2: 'Thermal sensation',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MorDataWidget(
            iconData: Icons.thermostat,
            titel: "${temp_main.round()}ºc",
            title2: 'Probability of rain',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MorDataWidget(
            iconData: Icons.wind_power,
            titel: "${widget.windSpeed.round()}km/h",
            title2: 'Wind speed',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MorDataWidget(
            iconData: Icons.wind_power,
            titel: "${widget.humidity}%",
            title2: 'Air humidity',
          ),
        ),
      ],
    );
  }
}
