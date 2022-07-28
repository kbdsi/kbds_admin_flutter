import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SearchByOption { code, name }

class SearchBy extends StatefulWidget {
  const SearchBy({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchBy> createState() => _SearchByState();
}

class _SearchByState extends State<SearchBy> {
  SearchByOption searchBy = SearchByOption.name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RepaintBoundary(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Radio(
                  // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: const VisualDensity(
                    vertical: VisualDensity.minimumDensity,
                  ),
                  value: SearchByOption.code,
                  onChanged: (value) {
                    setState(() {
                      searchBy = SearchByOption.code;
                    });
                  },
                  groupValue: searchBy,
                ),
                Text('Code'),
              ],
            ),
            Row(
              children: [
                Radio(
                  // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: const VisualDensity(
                    vertical: VisualDensity.minimumDensity,
                  ),
                  value: SearchByOption.name,
                  onChanged: (value) {
                    setState(() {
                      searchBy = SearchByOption.name;
                    });
                  },
                  groupValue: searchBy,
                ),
                Text('Name'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
