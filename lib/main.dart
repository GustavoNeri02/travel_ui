import 'package:flutter/material.dart';
import 'package:travel_ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Travel UI',
      theme: ThemeData(
        primaryColor: Color(0xff3EBACE),
        accentColor: Color(0xffD8ECF1),
        scaffoldBackgroundColor: Color(0xffF3F5F7),
      ),
      home: HomeScreen(),
    );
  }
}
