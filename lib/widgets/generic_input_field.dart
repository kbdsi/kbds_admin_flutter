import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenericInputField extends StatelessWidget {
  String inputTitle;
  Widget inputWidget;

  GenericInputField({required this.inputTitle, required this.inputWidget});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 7),
          width: 80,
          child: Text(
            inputTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[600],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 7, right: 15),
          child: Text(":"),
        ),
        Expanded(
          child: inputWidget,
        ),
      ],
    );
  }
}
