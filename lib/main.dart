import 'package:flutter/material.dart';
import 'package:app_ui/ui/homepageview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TripGlide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'SF Pro Display', useMaterial3: true),
      home: const HomePageView(),
    );
  }
}
