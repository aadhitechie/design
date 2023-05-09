import 'package:designs/view/otp_screen/number_otp_screen.dart';
import 'package:designs/view/starting_screen/starting_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: StartingScreen(),
    );
  }
}
