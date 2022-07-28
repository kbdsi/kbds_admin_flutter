import 'package:flutter/material.dart';
import 'package:kbds_admin_flutter/screens/city/city_screen.dart';
import 'package:kbds_admin_flutter/screens/country/country_screen.dart';
import 'package:kbds_admin_flutter/screens/district/district_screen.dart';
import 'package:kbds_admin_flutter/screens/parameter/parameter_screen.dart';
import 'package:kbds_admin_flutter/screens/postal/postal_screen.dart';
import 'package:kbds_admin_flutter/screens/province/province_screen.dart';
import 'package:kbds_admin_flutter/screens/village/village_screen.dart';

class NavBar extends StatelessWidget {
  Function(Widget, String) changeScreen;

  NavBar(this.changeScreen);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Adi",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                "naufal.adi@kbdsi.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://media-cdn.tripadvisor.com/media/photo-s/19/9d/db/64/avatar.jpg',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.amber[500],
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1095.jpg?w=996&t=st=1658971759~exp=1658972359~hmac=29039f80eccebb953df2f8bd279602aede57430db426860b51ff1baa05eca19b"),
                    fit: BoxFit.cover),
              ),
            ),
            ExpansionTile(
              title: Text("Maintenance"),
              initiallyExpanded: true,
              iconColor: Colors.blue,
              textColor: Colors.blue,
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_forward_sharp),
                  title: Text('Parameter'),
                  onTap: () {
                    changeScreen(ParameterScreen(), "Parameter");

                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.arrow_forward_sharp),
                  title: Text('Country'),
                  onTap: () {
                    changeScreen(CountryScreen(), "Country");
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.arrow_forward_sharp),
                  title: Text('Province'),
                  onTap: () {
                    changeScreen(ProvinceScreen(), "Province");
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.arrow_forward_sharp),
                  title: Text('City'),
                  onTap: () {
                    changeScreen(CityScreen(), "City");
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.arrow_forward_sharp),
                  title: Text('District'),
                  onTap: () {
                    changeScreen(DistrictScreen(), "District");

                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.arrow_forward_sharp),
                  title: Text('Village'),
                  onTap: () {
                    changeScreen(VillageScreen(), "Village");

                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.arrow_forward_sharp),
                  title: Text('Postal'),
                  onTap: () {
                    changeScreen(PostalScreen(), "Postal");

                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            AboutListTile(
              applicationLegalese: "© 2022 PT. KB Data Systems Indonesia",
              applicationName: "KBDS Admin",
              applicationVersion: "Version 1.2",
              dense: false,
              child: Text(
                "Build Information",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
