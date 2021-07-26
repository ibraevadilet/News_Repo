import 'package:flutter/material.dart';
import 'package:news_app/contents/images.dart';
import 'package:news_app/screens/filtr_screen.dart';
import 'package:news_app/screens/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: FirstScreen());
  }
}
