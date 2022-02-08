// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_1/utils/routs.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";

  final _formkey = GlobalKey<FormState>();
  bool _a = false;
  @override
  moveToHome(BuildContext context) async {
    {
      if (_formkey.currentState!.validate()) {
        setState(() {
          _a = true;
        });
        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoutes.homeRoute);
        setState(() {
          _a = false;
        });
      }
    }
  }

  Widget build(BuildContext context) {
    return Material(
      child:
          // ignore: prefer_const_constructors
          SingleChildScrollView(
        // padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Column(children: [
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
                    decoration: InputDecoration(
                        hintText: "Enter Name", labelText: "Name"),
                    onChanged: (value) => {name = value, setState(() => {})},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username Cannot be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password Cannot be empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white,
                    child: Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8),

                      //  color: Colors.transparent,
                      child: InkWell(
                        // splashColor: Colors.black,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration.zero,
                          alignment: Alignment.center,
                          // width: _a ? 50 : 150,
                          width: 150,
                          height: 50,
                          // child: _a
                          //     ? Icon(
                          //         Icons.done,
                          //         color: Colors.white,
                          //       )
                          //     : Text(
                          //         "LOGIN",
                          //         style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 15,
                          //             fontWeight: FontWeight.bold),
                          //       ),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
