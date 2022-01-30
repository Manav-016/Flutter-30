// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter

// import 'dart:html';

import 'package:flutter/material.dart';

// ignore: unused_import
import 'main.dart';

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo')),
      body: Center(child:
      Text('Flutter Demo Home Page')),
    );
  }
}