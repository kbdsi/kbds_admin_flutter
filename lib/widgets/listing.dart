import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kbds_admin_flutter/widgets/container_box.dart';

class Listing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerBox(
      title: 'Listing',
      child: Center(
        child: Text("Search result here"),
      ),
    );
  }
}
