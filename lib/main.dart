import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kbds_admin_flutter/screens/city/city_screen.dart';
import 'package:kbds_admin_flutter/screens/country/country_screen.dart';
import 'package:kbds_admin_flutter/screens/province/province_screen.dart';
import 'package:kbds_admin_flutter/widgets/custom_appbar.dart';
import 'package:kbds_admin_flutter/widgets/navbar.dart';

void main(List<String> args) {
  runApp(KbdsAdmin());
}

class KbdsAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScaffold(),
      routes: {
        "CountryScreen": (context) => CountryScreen(),
        "ProvinceScreen": (context) => ProvinceScreen(),
        "CityScreen": (context) => CityScreen(),
      },
    );
  }
}

class MainScaffold extends StatefulWidget {
  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  Widget currentScreen = CountryScreen();
  String title = "Country";

  void changeScreen(Widget newScreen, String screenTitle) {
    setState(() {
      currentScreen = newScreen;
      title = screenTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(changeScreen),
      appBar: CustomAppBar(title),
      body: currentScreen,
    );
  }
}
