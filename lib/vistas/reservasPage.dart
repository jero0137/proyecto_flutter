import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';

class ReservasPage extends StatefulWidget {
  ReservasPage({Key? key}) : super(key: key);

  @override
  _ReservasPageState createState() => _ReservasPageState();
}

class _ReservasPageState extends State<ReservasPage> {
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  DateTime fecha = DateTime.now();

  final itemSedes = ["Poblado", "Laureles", "Calasanz"];
  final itemHoras = [
    "12:00",
    "13:00",
    "14:00",
    "15:00",
    "16:00",
    "17:00",
    "18:00",
    "19:00",
    "20:00"
  ];
  String? sede, hora;

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item),
      );

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFE59866),
      appBar: barra("Haga su reserva", context),
      body: Center(
        child: Container(
            width: screenWidth * 0.95,
            height: screenHeight * 0.95,
            decoration: BoxDecoration(
              color: Color(0xFFFBFCFC),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                spaciador(50, 0),
                Row(
                  children: [Spacer(), subTitle("Elija una sede"), Spacer()],
                ),
                spaciador(30, 0),
                Container(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: sede,
                      iconSize: 30,
                      items: itemSedes.map(buildMenuItem).toList(),
                      onChanged: (value) => setState(() => this.sede = value),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin:
                      EdgeInsets.only(left: 0, top: 10, right: 10, bottom: 10),
                  width: 180,
                  height: 50,
                  child: GestureDetector(
                    child: Container(
                      width: 180,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFE59866),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("Fecha de Reserva")),
                    ),
                    onTap: () async {
                      DateTime? selectedDate = await showDatePicker(
                        context: context,
                        initialDate: fecha,
                        firstDate: DateTime(2022),
                        lastDate: DateTime(2023),
                      );
                      if (selectedDate == null) return;
                      setState(() => fecha = selectedDate);
                    },
                  ),
                ),
                Spacer(),
                subTitle("Seleccione hora"),
                spaciador(30, 0),
                Container(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: hora,
                      iconSize: 30,
                      items: itemHoras.map(buildMenuItem).toList(),
                      onChanged: (value) => setState(() => this.hora = value),
                    ),
                  ),
                ),
                Spacer(flex: 1),
                largeButton(() {
                  showDialog(
                      context: context,
                      builder: (buildcontext) {
                        return AlertDialog(
                          title: Text("Reserva"),
                          content: Text("Se ha hecho su reserva\n" +
                              "fecha: ${fecha.day}/${fecha.month}\n" +
                              "En la sede ${sede}"),
                          actions: <Widget>[
                            largeButton(() {
                              Navigator.of(context).pop();
                            }, Color(0xFFDC7633), "Exit"),
                          ],
                        );
                      });
                }, Color(0xFFF4D03F), "Hacer reserva"),
                Spacer(
                  flex: 1,
                ),
              ],
            )),
      ),
    );
  }
}
