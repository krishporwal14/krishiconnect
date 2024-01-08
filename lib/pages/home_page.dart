// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krishiconnect/widgets/image_processing_card.dart';
import 'package:krishiconnect/widgets/news_carousel.dart';
import 'package:krishiconnect/widgets/weather_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userName = "John Doe";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        title: Text('Welcome, $userName'),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(CupertinoIcons.profile_circled),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            WeatherCard(),
            ImageProcessingCard(),
            NewsCarousel(),
          ]),
      )
    );
  }
}
