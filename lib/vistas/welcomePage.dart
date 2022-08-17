import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/vistas/signInPage.dart';
import 'package:proyecto_flutter/vistas/signUpPage.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';
//import 'package:proyecto_flutter/vistas/signInPage.dart';

//StatelessWidget ya que no necesitamos que la vista no requiere cambiar de estado
class welcomePage extends StatelessWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 280,
        height: 620,
        decoration: BoxDecoration(
          color: Color(0xFFF7F9F9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          Text(
            "Welcome",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Spacer(flex: 2),
          Text(
            "Bienvenido al restaurante, ingrese para ver las diferentes opciones que tenemos para usted",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 1),
          const Image(image: AssetImage("assets/logo.png")),
          Spacer(flex: 1),
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
          Spacer(flex: 1),
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
