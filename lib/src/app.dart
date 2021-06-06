import 'package:flutter/material.dart';
import 'screen/main_screen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Correlatives Example",
      theme: ThemeData(
        primaryColor: Colors.blue.shade900,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
