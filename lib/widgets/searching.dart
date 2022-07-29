import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kbds_admin_flutter/widgets/container_box.dart';

class Searching extends StatelessWidget {
  final List<Widget> children;

  Searching({required this.children});

  @override
  Widget build(BuildContext context) {
    return ContainerBox(
      title: "Search",
      child: Column(
        children: [
          Column(
            children: children,
          ),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
