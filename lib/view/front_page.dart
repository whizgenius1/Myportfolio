import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  final Widget page;
  // final String className;
  FrontPage({
    @required this.page,
    //this.className
  });

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page,
    );
  }
}
