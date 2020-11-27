import 'package:flutter/material.dart';
import 'package:portfolio/view/about/about_large_screen.dart';
import 'package:portfolio/view/about/about_small_screen.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => constraints.maxWidth > 500
            ? AboutLargeScreen()
            : AboutSmallScreen());
  }
}
