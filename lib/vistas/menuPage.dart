import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';

class menuPage extends StatelessWidget {
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  menuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFBFCFC),
      body: Center(
        child: Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.95,
          decoration: BoxDecoration(
            color: Color(0xFFCB4335),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Spacer(),
                    titleText("Menu"),
                    Spacer(),
                  ],
                ),
                filaComida("assets/logo.png", "Pollo a la plancha", "15,000"),
                spaciador(10, 0.0),
                filaComida("assets/logo.png", "Solomo a la plancha", "15,000"),
                spaciador(10, 0.0),
                filaComida("assets/logo.png", "Tomahawk", "15,000"),
                spaciador(10, 0.0),
                filaComida("assets/logo.png", "Chicharron", "15,000"),
                spaciador(10, 0.0),
                filaComida("assets/logo.png", "Filete de cerdo", "15,000"),
                spaciador(10, 0.0),
                filaComida("assets/logo.png", "Robalo apanado", "15,000"),
                spaciador(10, 0.0),
                filaComida("assets/logo.png", "Tilapia a la plancha", "15,000"),
                spaciador(10, 0.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
