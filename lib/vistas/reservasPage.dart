import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';

class ReservasPage extends StatefulWidget {
  ReservasPage({ Key? key }) : super(key: key);

  @override
  _ReservasPageState createState() => _ReservasPageState();
}

class _ReservasPageState extends State<ReservasPage> {
  double screenHeight = 0.0;
  double screenWidth = 0.0;
  
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    
    String dropdownvalue = "Sede";  
 
  // List of items in our dropdown menu
      final items = [   
        "Sede Laureles",
        "Sede Poblado",
        "Sede Calazans",
      ];
    return Scaffold(
      backgroundColor: Color( 0xFFDC7633),
      appBar: AppBar(
        title: Text("Haga su reserva"),
        backgroundColor: Color(0xFFDC7633),
      ),
      body: Center(

        
        child: Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.95,
          decoration: BoxDecoration(
            color: Color(0xFFFBFCFC),
            borderRadius: BorderRadius.circular(10),
          ),

          child: Column(
            children: [
              
              Spacer(flex: 1),
              textField("Envigado, Poblado, Calasanz"),
              Spacer(),
              textField("Fecha: dd/mm"),
              Spacer(),
              textField("Hora: 00:00"),
              Spacer(),
              textField("Nro de personas"),
              Spacer(flex: 1),
              largeButton(
                (){
                  showDialog(
                        context: context,
                        builder: (buildcontext) {
                          return AlertDialog(
                            title: Text("Reserva"),
                            content: Text("Se ha hecho su reserva"),
                            actions: <Widget>[
                             
                              largeButton((){
                                Navigator.of(context).pop();
                              }, Color(0xFFDC7633), "Exit"),
                            ],
                          );
                        }
                      );
                },
                 Color(0xFFF4D03F), 
                 "Hacer reserva"
                 ),
              Spacer(flex: 1,),

            ],
          )
        ),
      ),
    );
  }
}
