import 'package:app_rest/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
