import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbds_admin_flutter/widgets/container_box.dart';
import 'package:kbds_admin_flutter/widgets/generic_input_field.dart';
import 'package:kbds_admin_flutter/widgets/listing.dart';
import 'package:kbds_admin_flutter/widgets/searching.dart';
import 'package:kbds_admin_flutter/widgets/subwidgets/custom_text_input.dart';
import 'package:kbds_admin_flutter/widgets/subwidgets/search_by.dart';

class CountryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Searching(
          children: [
            GenericInputField(
              inputTitle: 'Search By',
              inputWidget: SearchBy(),
            ),
            GenericInputField(
              inputTitle: 'Country Name',
              inputWidget: CustomTextInput(),
            ),
          ],
        ),
        Listing(),
      ],
    );
  }
}
