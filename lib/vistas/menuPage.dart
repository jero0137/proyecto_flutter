import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/vistas/comidas.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';

class menuPage extends StatelessWidget {
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  Pollo pollo = new Pollo();
  Solomo solomo = new Solomo();
  Tomahawk tomahawk = new Tomahawk();
  Chicharron chicharron = new Chicharron();
  Cerdo cerdo = new Cerdo();
  Robalo robalo = new Robalo();
  Tilapia tilapia = new Tilapia();

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
                      filaComida(
                          "assets/pollo.jpg", pollo.nombre, pollo.precio),
                      spaciador(10, 0.0),
                      filaComida(
                          "assets/solomo.jpg", tilapia.nombre, tilapia.precio),
                      spaciador(10, 0.0),
                      filaComida("assets/tomahawk.jpg", tomahawk.nombre,
                          tomahawk.precio),
                      spaciador(10, 0.0),
                      filaComida("assets/chicharron.jpg", chicharron.nombre,
                          chicharron.precio),
                      spaciador(10, 0.0),
                      filaComida(
                          "assets/cerdo.jpg", cerdo.nombre, cerdo.precio),
                      spaciador(10, 0.0),
                      filaComida(
                          "assets/robalo.jpg", robalo.nombre, robalo.precio),
                      spaciador(10, 0.0),
                      filaComida(
                          "assets/tilapia.jpg", tilapia.nombre, tilapia.precio),
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
