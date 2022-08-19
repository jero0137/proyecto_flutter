import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';

class ReservasPage extends StatelessWidget {
  ReservasPage({Key? key}) : super(key: key);
  double screenHeight = 0.0;
  double screenWidth = 0.0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
          child: Container(
        width: screenWidth * 0.9,
        height: screenHeight * 0.9,
        decoration: BoxDecoration(
          color: Color(0xFFCB4335),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: []),
      )),
    );
  }
}
