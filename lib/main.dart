import 'package:app_rest/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //rotacion del app no permitida
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    Color colorMorado = const Color(0xffcd60da);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter api rest',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: colorMorado,
      ),
      home: const HomePage(),
    );
  }
}
