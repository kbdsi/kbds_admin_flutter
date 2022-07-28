import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Adi"),
            accountEmail: Text("naufal.adi@kbdsi.com"),
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
              image: DecorationImage(
                image: NetworkImage(
                    "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1095.jpg?w=996&t=st=1658971759~exp=1658972359~hmac=29039f80eccebb953df2f8bd279602aede57430db426860b51ff1baa05eca19b"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
