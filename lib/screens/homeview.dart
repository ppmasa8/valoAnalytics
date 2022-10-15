import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Valorant",
          style:
              TextStyle(color: Color(0xffFFFFFF), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff110D2F),
        elevation: 0,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset('lib/images/VALORANT_Jett_Red_crop.0.jpg'),
        ),
      ),
    );
  }
}
