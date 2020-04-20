import 'package:flutter/material.dart';
import 'package:flutter_sparkline/presentation/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sparkline',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
