import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';
import 'package:proyecto_flutter/vistas/signUpPage.dart';
import 'package:proyecto_flutter/vistas/comidas.dart';

class DomiciliosPage extends StatelessWidget {
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  Pollo pollo = new Pollo();
  Solomo solomo = new Solomo();
  Tomahawk tomahawk = new Tomahawk();
  Chicharron chicharron = new Chicharron();
  Cerdo cerdo = new Cerdo();
  Robalo robalo = new Robalo();
  Tilapia tilapia = new Tilapia();

  List<Producto> carrito = [];

  int totalPedido = 0;

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
                filaPedido("assets/pollo.jpg", pollo.nombre, pollo.precio, () {
                  carrito.add(new Producto(pollo.nombre, pollo.precio));
                  totalPedido += pollo.precio;
                  showDialog(
                      context: context,
                      builder: (buildcontext) {
                        return AlertDialog(
                          title: Text("Pedido"),
                          content: mostrarCarrito(carrito),
                          actions: <Widget>[
                            largeButton(() {
                              Navigator.of(context).pop();
                            }, Color(0xFFDC7633), "Continuar"),
                          ],
                        );
                      });
                }),
                spaciador(10, 0.0),
                filaPedido("assets/solomo.jpg", solomo.nombre, solomo.precio,
                    () {
                  carrito.add(new Producto(solomo.nombre, solomo.precio));
                  totalPedido += pollo.precio;
                  showDialog(
                      context: context,
                      builder: (buildcontext) {
                        return AlertDialog(
                          title: Text("Pedido"),
                          content: mostrarCarrito(carrito),
                          actions: <Widget>[
                            largeButton(() {
                              Navigator.of(context).pop();
                            }, Color(0xFFDC7633), "Continuar"),
                          ],
                        );
                      });
                }),
                spaciador(10, 0.0),
                filaPedido(
                    "assets/tomahawk.jpg", tomahawk.nombre, tomahawk.precio,
                    () {
                  carrito.add(new Producto(tomahawk.nombre, tomahawk.precio));
                  totalPedido += pollo.precio;
                  showDialog(
                      context: context,
                      builder: (buildcontext) {
                        return AlertDialog(
                          title: Text("Pedido"),
                          content: mostrarCarrito(carrito),
                          actions: <Widget>[
                            largeButton(() {
                              Navigator.of(context).pop();
                            }, Color(0xFFDC7633), "Continuar"),
                          ],
                        );
                      });
                }),
                spaciador(10, 0.0),
                filaPedido("assets/chicharron.jpg", chicharron.nombre,
                    chicharron.precio, () {
                  carrito.add(new Producto(
                    chicharron.nombre,
                    chicharron.precio,
                  ));
                  totalPedido += pollo.precio;
                  showDialog(
                      context: context,
                      builder: (buildcontext) {
                        return AlertDialog(
                          title: Text("Pedido"),
                          content: mostrarCarrito(carrito),
                          actions: <Widget>[
                            largeButton(() {
                              Navigator.of(context).pop();
                            }, Color(0xFFDC7633), "Continuar"),
                          ],
                        );
                      });
                }),
                spaciador(10, 0.0),
                filaPedido("assets/cerdo.jpg", cerdo.nombre, cerdo.precio, () {
                  carrito.add(new Producto(cerdo.nombre, cerdo.precio));
                  totalPedido += pollo.precio;
                  showDialog(
                      context: context,
                      builder: (buildcontext) {
                        return AlertDialog(
                          title: Text("Pedido"),
                          content: mostrarCarrito(carrito),
                          actions: <Widget>[
                            largeButton(() {
                              Navigator.of(context).pop();
                            }, Color(0xFFDC7633), "Continuar"),
                          ],
                        );
                      });
                }),
                spaciador(10, 0.0),
                filaPedido("assets/robalo.jpg", robalo.nombre, robalo.precio,
                    () {
                  carrito.add(new Producto(robalo.nombre, robalo.precio));
                  totalPedido += pollo.precio;
                  showDialog(
                      context: context,
                      builder: (buildcontext) {
                        return AlertDialog(
                          title: Text("Pedido"),
                          content: mostrarCarrito(carrito),
                          actions: <Widget>[
                            largeButton(() {
                              Navigator.of(context).pop();
                            }, Color(0xFFDC7633), "Continuar"),
                          ],
                        );
                      });
                }),
                spaciador(10, 0.0),
                filaPedido("assets/tilapia.jpg", tilapia.nombre, tilapia.precio,
                    () {
                  carrito.add(new Producto(tilapia.nombre, tilapia.precio));
                  totalPedido += pollo.precio;
                  showDialog(
                      context: context,
                      builder: (buildcontext) {
                        return AlertDialog(
                          title: Text("Pedido"),
                          content: mostrarCarrito(carrito),
                          actions: <Widget>[
                            largeButton(() {
                              Navigator.of(context).pop();
                            }, Color(0xFFDC7633), "Continuar"),
                          ],
                        );
                      });
                }),
                spaciador(10, 0.0),
                spaciador(40, 0),
                largeButton(() {
                  showDialog(
                      context: context,
                      builder: (buildcontext) {
                        return AlertDialog(
                          title: Text("Pedido"),
                          content: mostrarCarrito(carrito),
                          actions: <Widget>[
                            largeButton(() {
                              Navigator.of(context).pop();
                              showDialog(
                                  context: context,
                                  builder: (buildcontext) {
                                    return AlertDialog(
                                      title: Text(
                                          "Finalizar Pedido\n El total es: ${totalPedido}"),
                                      content: Text("Compra finalizada"),
                                      actions: <Widget>[
                                        largeButton(() {
                                          Navigator.of(context).pop();
                                        }, Color(0xFFDC7633), "Continuar"),
                                      ],
                                    );
                                  });
                            }, Color(0xFFDC7633), "Pagar"),
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

  Column mostrarCarrito(List<Producto> carroCompra) {
    return Column(
      children: [
        for (int i = 0; i < carroCompra.length; i++)
          Text("${carroCompra[i].nombre}   ${carroCompra[i].precio}"),
      ],
    );
  }
}
