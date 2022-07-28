import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  @override
  final Size preferredSize;

  CustomAppBar(this.title) : preferredSize = Size.fromHeight(55.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.amberAccent,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 19,
        ),
      ),
    );
  }
}
