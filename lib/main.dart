import 'package:flutter/material.dart';
import 'package:mira/presentation/pages/home.dart';
import 'package:rive_splash_screen/rive_splash_screen.dart';

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
      home: SplashScreen.navigate(
        name: 'assets/demo_1.riv',
        next: (_) => const MyHomePage(title: 'Flutter Demo Home Page'),
        until: () => Future.delayed(const Duration(seconds: 5)),
        startAnimation: 'Animation 1',
      ),
    );
  }
}
