import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.deepPurple,
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountEmail: Text(
                    "abcd@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountName:
                      Text("MD", style: TextStyle(color: Colors.white)),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/login_img.png")),
                ),
              )
            ],
          ),
        ));
  }
}
