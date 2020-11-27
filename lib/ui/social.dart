import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utility/colour.dart';
import 'package:portfolio/utility/links.dart';

class Social extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.twitter,
              color: twitterColor,
            ),
            onPressed: () {
              html.window.open(Links.twitterLink, Links.twitterName);
            },
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.instagram,
              color: instagramColor,
            ),
            onPressed: () {
              html.window.open(Links.instagramLink, Links.instagramName);
            },
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.linkedinIn,
              color: linkedInColor,
            ),
            onPressed: () {
              html.window.open(Links.linkedInLink, Links.linkedInName);
            },
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.skype,
              color: skypeColor,
            ),
            onPressed: () {
              html.window.open(Links.skypeLink, Links.skypeName);
            },
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.githubAlt,
              color: gitHubColor,
            ),
            onPressed: () {
              html.window.open(Links.githubLink, Links.githubName);
            },
          )
        ],
      ),
    );
  }
}
