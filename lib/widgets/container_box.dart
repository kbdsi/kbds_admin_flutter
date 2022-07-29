import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbds_admin_flutter/widgets/generic_input_field.dart';
import 'package:kbds_admin_flutter/widgets/subwidgets/custom_text_input.dart';
import 'package:kbds_admin_flutter/widgets/subwidgets/search_by.dart';

class ContainerBox extends StatelessWidget {
  final String title;
  final Widget child;

  const ContainerBox({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
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
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.grey[300]!),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[600],
                    ),
                  ),
                ),
                if (title == 'Listing')
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(),
                      onPressed: () {},
                      child: Text('Add New'),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: child,
          ),
        ],
      ),
    );
  }
}
