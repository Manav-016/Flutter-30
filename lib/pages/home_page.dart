// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter

// import 'dart:html';

import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_1/models/catalog.dart';
import 'package:practice_1/widgets/drawer.dart';

// ignore: unused_import
import '../main.dart';
import '../widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/file/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    // print(decodedData);
    CatalogModel.items =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CatalogHeader(),
                    if (CatalogModel.items != null &&
                        CatalogModel.items.isNotEmpty)
                      Expanded(child: CatalogList())
                    else
                      Center(
                        child: CircularProgressIndicator(),
                      )
                  ]))),

      // // appBar: AppBar(
      // //   title: Text('Flutter Demo'),
      // // ),
      // drawer: MyDrawer(),
      // // ignore: unnecessary_null_comparison
      // body:
      // Text("Catalog App");

      // (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
      //     ? ListView.builder(
      //         padding: const EdgeInsets.all(5),
      //         // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         // crossAxisCount: 2),
      //         itemCount: CatalogModel.items.length,
      //         itemBuilder: (context, index) {
      //           final item = CatalogModel.items[index];
      //           return Card(
      //               shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(15)),
      //               clipBehavior: Clip.antiAlias,
      //               elevation: 3,
      //               child: Container(
      //                 margin:
      //                     EdgeInsets.symmetric(horizontal: 10, vertical: 5),

      //                 // ListTile(
      //                 // header: Container(
      //                 //   padding: const EdgeInsets.all(10),
      //                 //   child: Text(item.name),
      //                 // ),
      //                 // child: Image.asset("assets/images/login_img.png"),
      //                 // footer: Container(
      //                 //   padding: const EdgeInsets.all(10),
      //                 //   child: Text("${item.price}"),
      //                 // ),
      //                 // ),
      //                 child: InkWell(
      //                   onTap: () {
      //                     print("${CatalogModel.items[index]} is tapped");
      //                   },
      //                   child: ItemWidget(
      //                     item: CatalogModel.items[index],
      //                   ),
      //                 ),
      //               ));
      //         },
      //       )
      //     : Center(child: CircularProgressIndicator());
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Catalog App",
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        Text(
          "Trending Products",
          // textAlign: TextAlign.start,
        )
      ]),
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return CatalogItem(catalog);
        });
  }
}

class CatalogItem extends StatelessWidget {
  const CatalogItem(@required Item catalog, {Key? key})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var catalog;
    return Container(
      padding: EdgeInsets.all(0),
      color: Colors.amber,
      height: 100,
      width: 100,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Image.asset("assets/images/login_img.png")]),
    );
  }
}
