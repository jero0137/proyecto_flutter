import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';
import 'package:proyecto_flutter/vistas/signUpPage.dart';

class DomiciliosPage extends StatelessWidget {
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  List carrito = [];

  DomiciliosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: barra("Pide tu domicilio", context),
      body: Center(
        child: Container(
          width: screenWidth,
          height: screenHeight * 0.95,
          decoration: BoxDecoration(
            color: Color(0xFFF7F9F9),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                spaciador(20, 0),
                listaMenu(),
                spaciador(40, 0),
                largeButton(() {
                  showDialog(
                      context: context,
                      builder: (buildcontext) {
                        return AlertDialog(
                          title: Text("Pedido"),
                          content: Text("Se ha hecho su pedido"),
                          actions: <Widget>[
                            largeButton(() {
                              Navigator.of(context).pop();
                            }, Color(0xFFDC7633), "Exit"),
                          ],
                        );
                      });
                }, Color(0xFFF7DC6F), "Finalizar compra"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column listaMenu() {
    return Column(
      children: [
        spaciador(10, 0),
        filaPedido("assets/pollo.jpg", "Pollo a la plancha", "15,000", () {}),
        spaciador(10, 0.0),
        filaPedido("assets/solomo.jpg", "Solomo a la plancha", "15,000", () {}),
        spaciador(10, 0.0),
        filaPedido("assets/tomahawk.jpg", "Tomahawk", "15,000", () {}),
        spaciador(10, 0.0),
        filaPedido("assets/chicharron.jpg", "Chicharron", "15,000", () {}),
        spaciador(10, 0.0),
        filaPedido("assets/cerdo.jpg", "Filete de cerdo", "15,000", () {}),
        spaciador(10, 0.0),
        filaPedido("assets/robalo.jpg", "Robalo apanado", "15,000", () {}),
        spaciador(10, 0.0),
        filaPedido("assets/tilapia.jpg", "Tilapia a la plancha", "15,000", () {}),
        spaciador(10, 0.0),
      ],
    );
  }

  void addCarrito() {}
}
