import 'package:flutter/material.dart';
import 'package:portfolio/ui/portfolio_drawer.dart';
import 'package:portfolio/ui/portfolio_footer.dart';
import 'package:portfolio/ui/portfolio_menu.dart';
import 'package:portfolio/ui/portfolio_text.dart';
import 'package:portfolio/ui/social.dart';
import 'package:portfolio/utility/bubbles.dart';
import 'package:portfolio/utility/colour.dart';

class HomeSmallScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: PortfolioDrawer(),
      backgroundColor: secondaryColourLight,
      body: Stack(
        children: [
          Bubbles(),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PortfolioText(
                text: "Osione O Ikioda",
                size: 30,
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(text: "", children: <TextSpan>[
                  TextSpan(
                      text: "I am a passionate ",
                      style: TextStyle(color: backgroundColor,
                          fontSize: 16)),
                  TextSpan(
                      text: "software developer",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.wavy,
                          decorationColor: Colors.blueAccent,
                          color: white,
                          fontSize: 18)),
                  TextSpan(
                      text: " in Lagos, Nigeria", style: TextStyle(color: backgroundColor,fontSize: 16))
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Social()
            ],
          )),
          Align(
            alignment: Alignment.topRight,
            child: PortfolioMenu(
              openMenu: () {
                _scaffoldKey.currentState.openEndDrawer();
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: PortfolioFooter(),
          )
        ],
      ),
    );
  }
}
