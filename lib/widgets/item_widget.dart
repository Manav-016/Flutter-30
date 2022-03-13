import 'package:flutter/material.dart';
import 'package:practice_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset("assets/images/login_img.png"),
        title: Text("iPhone 13"),
        subtitle: Text("6 GB,128 GB"),
        trailing: Text(
          "\$${999}",
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ));
  }
}
