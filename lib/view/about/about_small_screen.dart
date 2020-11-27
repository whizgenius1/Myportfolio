import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/ui/portfolio_appbar.dart';
import 'package:portfolio/ui/portfolio_drawer.dart';
import 'package:portfolio/ui/portfolio_footer.dart';
import 'package:portfolio/utility/colour.dart';
import 'package:portfolio/utility/half_horizontal_line.dart';

class AboutSmallScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - 100;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: secondaryColour,
      appBar: PortfolioAppBar(
        title: Text(
          "Osione O Ikioda",
          style: TextStyle(
              color: white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      endDrawer: PortfolioDrawer(AboutSmallScreen()),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "About",
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                CustomPaint(painter: DrawHorizontalLine(false))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: height - 100,
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CustomPaint(painter: DrawHorizontalLine(true)),
                      const Text(
                        "Software Engineer",
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      CustomPaint(painter: DrawHorizontalLine(false))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    """I describe myself as a passionate developer who loves coding and solving problems and always try to grow and better myself with every project I work on.
              \n A gifted and talented young man who aspires to be a success with what I do with a major impact in the world of technology and also in the society. I look forward to working with dedicated personnel, using my unique talents and skills to make positive changes everywhere I find myself.
               """,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios),
                          SizedBox(
                            width: 10,
                          ),
                          RichText(
                              text: TextSpan(text: "", children: <TextSpan>[
                            TextSpan(
                                text: "Birthday: ",
                                style: TextStyle(
                                    color: white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: "2 May 1998",
                              style: TextStyle(
                                color: white,
                              ),
                            )
                          ]))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios),
                          SizedBox(
                            width: 10,
                          ),
                          RichText(
                              text: TextSpan(text: "", children: <TextSpan>[
                            TextSpan(
                                text: "Phone: ",
                                style: TextStyle(
                                    color: white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: "2 May 1998",
                              style: TextStyle(
                                color: white,
                              ),
                            )
                          ]))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios),
                          SizedBox(
                            width: 10,
                          ),
                          RichText(
                              text: TextSpan(text: "", children: <TextSpan>[
                            TextSpan(
                                text: "Address: ",
                                style: TextStyle(
                                    color: white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: "Lagos, Nigeria",
                              style: TextStyle(
                                color: white,
                              ),
                            )
                          ]))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios),
                          SizedBox(
                            width: 10,
                          ),
                          RichText(
                              text: TextSpan(text: "", children: <TextSpan>[
                                TextSpan(
                                    text: "Degree: ",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text: "BSc (Computer Science)",
                                  style: TextStyle(
                                    color: white,
                                  ),
                                )
                              ]))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomPaint(painter: DrawHorizontalLine(true)),
                const Text(
                  "Skills",
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.bold, fontSize: 20),
                ),
                CustomPaint(painter: DrawHorizontalLine(false))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomPaint(painter: DrawHorizontalLine(true)),
                const Text(
                  "Interests",
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.bold, fontSize: 20),
                ),
                CustomPaint(painter: DrawHorizontalLine(false))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
