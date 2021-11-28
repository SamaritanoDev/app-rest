import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  final double size;
  const IconContainer({
    Key? key,
    required this.size,
  })  : assert(size > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(size * 0.1),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, 
                blurRadius: 25, 
                offset: Offset(0, 15))
          ]),
      padding: EdgeInsets.all(size * 0.15),
      child: Center(
        child: SvgPicture.asset(
          'assets/images/codegirl.svg',
          width: size * 0.8,
          height: size * 0.8,
        ),
      ),
    );
  }
}
