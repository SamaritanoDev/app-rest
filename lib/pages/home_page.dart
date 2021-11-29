import 'package:app_rest/utils/reponsive.dart';
import 'package:app_rest/widgets/circle.dart';
import 'package:app_rest/widgets/icon_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //responsive
    final Responsive responsive = Responsive.of(context);
    //estilos
    final double moradosize = responsive.obtenerAncho(80);
    final double celestesize = responsive.obtenerAncho(57);
    Color morado = const Color(0xffcd60da);
    Color lila = const Color(0xffd6a3dc);
    Color turquesa = const Color(0xff75cce8);
    Color celeste = const Color(0xffa5dee5);
    double doubleinfinity = double.infinity;
    return Scaffold(
        body: Container(
      width: doubleinfinity,
      height: doubleinfinity,
      color: Colors.white,
      child: Stack(alignment: Alignment.center, children: [
        Positioned(
          top: -moradosize * 0.4,
          right: -moradosize * 0.2,
          child: Circle(
            size: moradosize, 
            colors: [morado, lila]),
        ),
        Positioned(
          top: -celestesize * 0.55,
          left: -celestesize * 0.15,
          child: Circle(
            size: celestesize, 
            colors: [turquesa, celeste]),
        ),
        Positioned(
            top: 130,
            child: Column(
              children: [
                IconContainer(
                  size: responsive.obtenerAncho(17),
                ),
                SizedBox(
                  height: responsive.obtenerDiagonal(3),
                ),
                Text(
                  "Hola Mundo\nCod3 Girl",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: responsive.obtenerDiagonal(1.6),
                  ),
                )
              ],
            )),
      ]),
    ));
  }
}
