import 'package:flutter/material.dart';

class MorDataWidget extends StatelessWidget {
  const MorDataWidget({super.key, required this.iconData, required this.titel,required this.title2});
  final IconData iconData;
  final String titel;
  final String title2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xff13131A), boxShadow: [
        BoxShadow(blurRadius: 0.4, color: Color(0xff13131A)),
      ]
          //borderRadius: BorderRadius.circular(10)
          ),
      child: Row(
        children: [
          Icon(
            iconData,
            color: Color(0xff3B3B54),
          ),
           Text(
            title2.toString(),
            style: TextStyle(fontSize: 14, color: Color(0xffBFBFD4)),
          ),
          const Spacer(),
          Text(
            titel,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
