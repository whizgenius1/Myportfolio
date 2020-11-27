import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:portfolio/utility/links.dart';

class PortfolioFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FlatButton(
            child: Text("<Flutter>"),
            onPressed: () {
              html.window.open(Links.flutterLink, Links.flutterName);
            },
          ),
        ],
      ),
    );
  }
}
