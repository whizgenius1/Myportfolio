import 'package:flutter/material.dart';
import 'package:portfolio/utility/colour.dart';

class PortfolioText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  PortfolioText({@required this.text, this.color = white, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
