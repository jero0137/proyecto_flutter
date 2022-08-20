import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:proyecto_flutter/vistas/menuPage.dart';
import 'package:proyecto_flutter/vistas/signUpPage.dart';
import 'package:proyecto_flutter/vistas/welcomePage.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';

class SignInPage extends StatelessWidget {
  double screenHeight = 0.0;
  double screenWidth = 0.0;
  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      
      
      backgroundColor: Color(0xFFDC7633),
      body: Center(
        child: Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.9,
          decoration: BoxDecoration(
            color: Color( 0xFFF4F6F7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [

            Row(
              
              children: [
                
                Spacer(),
                smallButton(
                  (){

                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SignUpPage();
                    }),
                  );
                }, 
                Color(0xFF58D68D), 
                "Sign Up"),
                spaciador(50.0, 20.0),
              ],
            ),

            Image(image: AssetImage("assets/personas.png"), width: 200, height:200,),
            Spacer(flex: 1),
            titleText("Sign In"),
            SizedBox(height: 8),
            subTitle("Ingresa"),
            Spacer(),
            SizedBox(
              width: 180,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "User",
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 180,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            Spacer(),
            largeButton(
              () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return welcomePage();
                    }),
                  );
            },
             Color(0xFF58D68D), 
             "Sign In"),
            Spacer(flex: 2),
            largeButton(
              () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return menuPage();
                    }),
                  );
            },
             Color(0xFF58D68D), 
             "Ver menu"
             ),
             Spacer(),
          ]),
        ),
      ),
    );
  }
}
