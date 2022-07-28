import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbds_admin_flutter/widgets/generic_input_field.dart';
import 'package:kbds_admin_flutter/widgets/subwidgets/custom_text_input.dart';
import 'package:kbds_admin_flutter/widgets/subwidgets/search_by.dart';

class ContainerBox extends StatelessWidget {
  final String title;

  const ContainerBox({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(0, 0),
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.grey[300]!),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[600],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                GenericInputField(
                  inputTitle: "Search By",
                  inputWidget: SearchBy(),
                ),
                GenericInputField(
                    inputTitle: "Country", inputWidget: CustomTextInput())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
