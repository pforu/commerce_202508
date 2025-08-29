import 'package:commerce_202508/screen/main/main_screen.dart';
import 'package:commerce_202508/util/custom_scroll_behavior.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Commerce SMWU",
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.amber
      ),
      home: MainScreen(),
      scrollBehavior: CustomScrollBehavior(),
    );
  }
}
