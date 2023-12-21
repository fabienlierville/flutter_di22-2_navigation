import 'package:flutter/material.dart';
import 'package:navigation/pages/alert_page.dart';
import 'package:navigation/pages/bottom_page.dart';
import 'package:navigation/pages/simple_page.dart';
import 'package:navigation/pages/snack_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomPage(),
      routes: <String,WidgetBuilder>{
        "/alert": (BuildContext context) => AlertPage(),
        "/simple": (BuildContext context) => SimplePage(),
        "/snack": (BuildContext context) => SnackPage(title: "SnackBar")
      },
    );
  }
}

