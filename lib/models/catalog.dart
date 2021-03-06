import 'package:flutter/material.dart';

class CatalogModel {
  static List<Item> items = [
    // Item(
    //   id: 1,
    //   name: "iPhone 13",
    //   desc: "Latest iPhone in the market",
    //   price: 79999,
    //   color: "#0c4f66",
    //   img:
    //       "https://www.google.com/imgres?imgurl=https%3A%2F%2Fi0.wp.com%2Fmaplestore.in%2Fwp-content%2Fuploads%2F2021%2F09%2Fr1433_Blue_PDP_Image_Position-1A_Avail__en-IN.jpg%3Ffit%3D2048%252C2048%26ssl%3D1&imgrefurl=https%3A%2F%2Fmaplestore.in%2Fshop%2Fiphone-13%2F&tbnid=6ISoiZG1868jFM&vet=12ahUKEwj89Lj1zPX1AhUDQWwGHUS9D14QMygEegUIARCuAg..i&docid=T_BxXmq0WMgN0M&w=2048&h=2048&itg=1&q=iphone%2013%20im&ved=2ahUKEwj89Lj1zPX1AhUDQWwGHUS9D14QMygEegUIARCuAg",
    // )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.img});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      img: map["img"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "img": img
      };
}
