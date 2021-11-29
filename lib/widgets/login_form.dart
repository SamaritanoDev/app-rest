import 'package:app_rest/widgets/input_text.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({ Key? key }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    //Color morado = const Color(0xffcd60da);
    //Color lila = const Color(0xffd6a3dc);
    Color turquesa = const Color(0xff75cce8);
    //Color celeste = const Color(0xffa5dee5);

    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Column(
        children: const [
          InputText(
            keyboardType: TextInputType.emailAddress,
            label: 'EMAIL ADDRESS',
          ),
          InputText(
            label: 'PASSWORD',
            obscureText: true,
          )
        ],
      ),
    );
  }
}