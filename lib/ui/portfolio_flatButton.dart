import 'package:flutter/material.dart';

import '../utility/colour.dart';
import '../utility/colour.dart';

class PortfolioFlatButton extends StatelessWidget {
  final Function onPressed;
  final Widget child;
  final Color textColor;
  final Color splashColor;
  final double size;

  PortfolioFlatButton(
      {@required this.onPressed,
      @required this.child,
      this.textColor = white,
      this.splashColor = primaryColourLight,
      this.size = 30});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: child,
      // splashColor: splashColor,
      height: size,
      textColor: textColor,
    );
  }
}
