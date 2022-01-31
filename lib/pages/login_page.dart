// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child:
          // ignore: prefer_const_constructors
          Column(children: [
        Image.asset("assets/images/login_img.png"),
        SizedBox(
          height: 20,
        ),
        Text(
          "Welcome To Our App",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              TextFormField(
                decoration:
                    InputDecoration(hintText: "Enter Name", labelText: "Name"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => {print("object")}, child: Text("LOGIN"))
            ],
          ),
        )
      ]),
    );
  }
}
