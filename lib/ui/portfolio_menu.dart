import 'package:flutter/material.dart';
import 'package:portfolio/utility/colour.dart';

class PortfolioMenu extends StatelessWidget {

  final Function openMenu;
  PortfolioMenu({
    this.openMenu
});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: white,
      icon: Icon(Icons.menu),
      onPressed:openMenu,
    );
  }
}
