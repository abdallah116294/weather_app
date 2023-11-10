import 'package:flutter/material.dart';
import 'package:weathre/Peresentation/screen/weather_details_screen.dart';
class GetStartScreen extends StatefulWidget {
  const GetStartScreen({super.key});

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  final cityNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff13131A),
      appBar: AppBar(
        elevation:0.0,
        centerTitle:true,
        backgroundColor:const  Color(0xff13131A) ,
        title: Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Vector.png'),
            const Text(
              'TypeWeather',
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                 "Welcome To ",
                 style: TextStyle(fontSize: 20, color: Colors.white),
               ),
               Text(
                 'TypeWeather',
                 style: TextStyle(fontSize: 24, color: Color(0xff8FB2F5)),
               ),
             ],
           ),
            const SizedBox(height: 15,),
            const Text(
              "Choose a location to see the weather forecast",
              style: TextStyle(fontSize: 14, color: Color(0xffBFBFD4)),
            ),
             const SizedBox(height: 15,),
            TextField(
              controller: cityNameController,
                onSubmitted: (value){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WeatherDetailsScreen(cityName: cityNameController.text,)));
                },
                style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                  fillColor: Color(0xFF1E1E29),
                  hintText: "City Name ",
              
                  hintStyle: TextStyle(color: Color(0xFF7E7E97)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
