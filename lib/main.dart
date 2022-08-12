import 'package:flutter/material.dart';
import 'package:route_example/Media.dart';
import 'package:route_example/home.dart';
import 'package:route_example/image.dart';
import 'package:route_example/video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),

      //Route for navigation
      initialRoute: '/home',
      routes: {
        MyHomePage.routeName: (context) => const MyHomePage(),
        Media.routeName: (context) => const Media(),
        Picture.routeName: (context) => const Picture(),
        Video.routeName: (context) => const Video(),
      },
    );
  }
}
