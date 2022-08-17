import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/vistas/menuPage.dart';
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
    return Center(
      child: Container(

        width: screenWidth * 0.7,
        height: screenHeight * 0.9,

        decoration: BoxDecoration(
          color: Color(0xFFF7F9F9),
          borderRadius: BorderRadius.circular(10),
        ),

        
        child: Column(children: [
          Spacer(),
          Row(
            children: [
            Spacer(),  
            smallButton(
              () {
                //Aqui va la funcion
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignInPage();
                  }),
                );
              },
            Color(0xFF58D68D),
            "Sign In",
            ),
            Spacer()


            ],
          ),
          Row(
            children: [
              Spacer(),
              const Image(image: AssetImage("assets/logo.png")),
              titleText("Restauranto"),
              Spacer(),
            ],
          ),
          
          subTitle("Bienvenido a restauranto seleccione una opcion"),
          Spacer(flex: 1),

          largeButton(
            (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return menuPage();
                }),
              );
            }, 
            Color(0xFF58D68D), 
            "Menú"
          ),
          Spacer(),
          largeButton(
            (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return menuPage();
                }),
              );
            }, 
            Color(0xFF58D68D), 
            "Pedir domicilio"
          ),
          Spacer(),

          
          largeButton(
            () {
              //Aqui va la funcion
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SignInPage();
                }),
              );
            },
            Color(0xFF58D68D),
            "Sign In",
          ),
          Spacer(),

          largeButton(
            () {
              //Aqui va la funcion
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SignUpPage();
                }),
              );
            },
            Color(0xFF58D68D),
            "Sign Up",
          ),
          Spacer(flex: 2),
        ]),
      ),
    );
  }
}
