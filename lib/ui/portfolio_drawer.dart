import 'package:flutter/material.dart';
import 'package:portfolio/ui/portfolio_flatButton.dart';
import 'package:portfolio/utility/slide_route.dart';
import 'package:portfolio/view/about/about_small_screen.dart';
import 'package:portfolio/view/front_page.dart';

import '../utility/colour.dart';
import '../utility/colour.dart';
import '../view/about/about.dart';
import '../view/home/home.dart';
import '../view/home/home_small_screen.dart';

class PortfolioDrawer extends StatefulWidget {
  final className;
  PortfolioDrawer(this.className);
  @override
  _PortfolioDrawerState createState() => _PortfolioDrawerState();
}

class _PortfolioDrawerState extends State<PortfolioDrawer> {
  bool _home;
  bool _about;
  bool _resume;
  bool _services;
  bool _contact;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      widget.className.runtimeType == HomeSmallScreen().runtimeType
          ? _home = true
          : _home = false;
      widget.className.runtimeType == AboutSmallScreen().runtimeType
          ? _about = true
          : _about = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        // Set the transparency here
        canvasColor: Colors.black26.withOpacity(
            .3), //or any other color you want. e.g Colors.blue.withOpacity(0.5)
      ),
      child: Drawer(
          elevation: 8,
          child: ListView(
            children: [
              SizedBox(height: 50),
              PortfolioFlatButton(
                onPressed: () {
                  Navigator.push(
                      context, SlideRightRoute(page: FrontPage(page: Home())));
                },
                textColor: _home ? primaryColourLight : white,
                child: Text("Home"),
              ),
              SizedBox(height: 10),
              PortfolioFlatButton(
                onPressed: () {
                  Navigator.push(
                      context, SlideRightRoute(page: FrontPage(page: About())));
                },
                textColor: _about ? primaryColourLight : white,
                child: Text("About"),
              ),
              SizedBox(height: 10),
              PortfolioFlatButton(
                onPressed: () {},
                child: Text("Resume"),
              ),
              SizedBox(height: 10),
              PortfolioFlatButton(
                onPressed: () {},
                child: Text("Services"),
              ),
              SizedBox(height: 10),
              PortfolioFlatButton(
                onPressed: () {},
                child: Text("Contact"),
              ),
            ],
          )),
    );
  }
}
