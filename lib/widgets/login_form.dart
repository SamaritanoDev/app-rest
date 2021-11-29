import 'dart:ui';
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

    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Column(
        children: [
          const InputText(
            keyboardType: TextInputType.emailAddress,
            label: 'EMAIL ADDRESS',
            borderEnabled: false,
          ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xff75cce8),
                  )
                )
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: InputText(
                      label: 'PASSWORD',
                      obscureText: true,
                      borderEnabled: false,
                    ),
                  ),
                  TextButton(
                    onPressed: (){}, 
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffcd60da),
                      ),
                      )
                    )
                ]
              ),
            ),
        ],
      ),
    );
  }
}