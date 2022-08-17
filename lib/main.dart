import 'package:flutter/material.dart';
import 'package:proyecto_flutter/vistas/signInPage.dart';
import 'package:proyecto_flutter/vistas/welcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
        backgroundColor: Color(0xFFDC7633),
        body: welcomePage(),
      ),
    );
  }
}
