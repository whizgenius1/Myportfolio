import 'package:flutter/material.dart';
import 'package:portfolio/view/home/large_screen.dart';
import 'package:portfolio/view/home/small_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => constraints.maxWidth > 500
            ? HomeLargeScreen()
            : HomeSmallScreen());
  }
}
