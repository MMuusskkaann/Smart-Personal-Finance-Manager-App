import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color? color;

  // ignore: use_super_parameters
  const PrimaryText({
    Key? key,
    required this.text,
    required this.size,
    required this.fontWeight,
    this.color, required TextAlign textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color ?? Colors.black,
      ),
    );
  }
}
