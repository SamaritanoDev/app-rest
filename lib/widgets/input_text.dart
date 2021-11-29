import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText,borderEnabled;
  const InputText({
    Key? key,
    this.label = '',
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.borderEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Color morado = const Color(0xffcd60da);
    Color turquesa = const Color(0xff75cce8);
    return TextFormField(
      //que tipo de dato es email o pass
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        enabledBorder: borderEnabled? UnderlineInputBorder(
          borderSide: BorderSide(
            color: turquesa)
        ): InputBorder.none,
        labelText: label,
        labelStyle: TextStyle(
          color: turquesa, 
          fontWeight: FontWeight.bold)),
    );
  }
}
