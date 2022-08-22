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
      appBar: barra("Inicio", context),
      backgroundColor: Color(0xFFDC7633),
      body: Center(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: BoxDecoration(
            color: Color(0xFFFBFCFC),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                spaciador(30, 0),
                
                Center(
                  child: Column(
                    children: [
                      filaComida("assets/pollo.jpg", "Pollo a la plancha", "15,000"),
                      spaciador(10, 0.0),
                      filaComida("assets/solomo.jpg", "Solomo a la plancha", "15,000"),
                      spaciador(10, 0.0),
                      filaComida("assets/tomahawk.jpg", "Tomahawk", "15,000"),
                      spaciador(10, 0.0),
                      filaComida("assets/chicharron.jpg", "Chicharron", "15,000"),
                      spaciador(10, 0.0),
                      filaComida("assets/cerdo.jpg", "Filete de cerdo", "15,000"),
                      spaciador(10, 0.0),
                      filaComida("assets/robalo.jpg", "Robalo apanado", "15,000"),
                      spaciador(10, 0.0),
                      filaComida("assets/tilapia.jpg", "Tilapia", "15,000"),
                      spaciador(10, 0.0),
                    ],
                  ),
                
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
