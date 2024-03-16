import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myshoprrc/product_screen/productdetailScreen.dart';
import 'package:myshoprrc/product_screen/productlist.dart';

class RRCSubProductscreen extends StatefulWidget {
  dynamic itemIndex;

  RRCSubProductscreen({required this.itemIndex});

  @override
  State<RRCSubProductscreen> createState() => _RRCSubProductscreenState();
}

class _RRCSubProductscreenState extends State<RRCSubProductscreen> {
  @override
  Widget build(BuildContext context) {
    Map<String , dynamic> product= RRC_Product_List.product_List[widget.itemIndex];
    dynamic subProduct= product['subCatProList'];

    return Scaffold(
        appBar: AppBar(
          title: Text(product['mainCatName']),
        ),
        body: ListView.builder(
          itemCount:subProduct.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RRCProduct_Detail_screen(subItemIndex: index),));
              },
              title: Text(subProduct[index]['pName']),
              subtitle: Text(subProduct[index]['pDesc']),
              leading:Container(
                height: 120,
                  width: 120,
                  child: Image.network(subProduct[index]['pImgUrl'],width:double.infinity)),
            );
          },
        ));
  }
}
