import 'package:flutter/material.dart';

import 'features/ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
// ! https://www.youtube.com/watch?v=Y1roIi0-Sro 
// TODO 25:01 se dekna hai
