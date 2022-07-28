import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbds_admin_flutter/widgets/container_box.dart';
import 'package:kbds_admin_flutter/widgets/generic_input_field.dart';
import 'package:kbds_admin_flutter/widgets/subwidgets/custom_text_input.dart';
import 'package:kbds_admin_flutter/widgets/subwidgets/search_by.dart';

class CountryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerBox(
          title: 'Search',
        ),
        ContainerBox(
          title: 'Listing',
        )
      ],
    );
  }
}
