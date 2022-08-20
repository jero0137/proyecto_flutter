import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/vistas/domiciliosPage.dart';
import 'package:proyecto_flutter/vistas/menuPage.dart';
import 'package:proyecto_flutter/vistas/reservasPage.dart';
import 'package:proyecto_flutter/vistas/sedesPage.dart';
import 'package:proyecto_flutter/vistas/signInPage.dart';
import 'package:proyecto_flutter/vistas/signUpPage.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';
//import 'package:proyecto_flutter/vistas/signInPage.dart';

//StatelessWidget ya que no necesitamos que la vista no requiere cambiar de estado
class welcomePage extends StatelessWidget {
  welcomePage({Key? key}) : super(key: key);

  double screenHeight = 0.0;
  double screenWidth = 0.0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFDC7633),
      appBar: barra("Inicio", context),
      body: Center(
      child: Container(
        width: screenWidth ,
        height: screenHeight,
        decoration: BoxDecoration(
          color: Color(0xFFF7F9F9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          

          Row(
            children: [
              Spacer(),
              Image(image: AssetImage("assets/logo.png")),
              titleText("Restauranto"),
              Spacer(),
            ],
          ),
          subTitle("Bienvenido a restauranto seleccione una opcion"),
          Spacer(flex: 1),
          //Boton para ver el menu
          largeButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return menuPage();
              }),
            );
          }, Color(0xFF58D68D), "Menú"),
          Spacer(),
          //Boton para domicilios

          largeButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return DomiciliosPage();
              }),
            );
          }, Color(0xFF58D68D), "Pedir domicilio"),
          Spacer(),
          //Boton para reservar
          largeButton(
            () {
              //Aqui va la funcion
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ReservasPage();
                }),
              );
            },
            Color(0xFF58D68D),
            "Reservar",
          ),
          Spacer(),
          //Boton  para ver sedes
          largeButton(
            () {
              //Aqui va la funcion
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SedesPage();
                }),
              );
            },
            Color(0xFF58D68D),
            "Ver sedes",
          ),
          Spacer(flex: 2),
        ]),
      ),
     ),
    );
     
    
  }
}
