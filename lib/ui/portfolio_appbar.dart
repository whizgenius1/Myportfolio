import 'package:flutter/material.dart';

class PortfolioAppBar extends StatefulWidget implements PreferredSizeWidget {

  final Widget title;
  PortfolioAppBar({
    this.title
});

  @override
  _PortfolioAppBarState createState() => _PortfolioAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}

class _PortfolioAppBarState extends State<PortfolioAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
   
      leading: Center(),
      centerTitle: false,
      title: widget.title,
    );
  }
}
