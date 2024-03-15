import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myshoprrc/product_screen/productlist.dart';

class RRCSubProductscreen extends StatefulWidget {
  int itemIndex;
  RRCSubProductscreen({required this.itemIndex});

  @override
  State<RRCSubProductscreen> createState() => _RRCSubProductscreenState();
}

class _RRCSubProductscreenState extends State<RRCSubProductscreen> {
  @override
  Widget build(BuildContext context) {
    Map<String , dynamic> product= RRC_Product_List.product_List[widget.itemIndex];
    log(product['subCatProList'][1]['pImgUrl']);
    return Scaffold(
      appBar: AppBar(
        title: Text(product['mainCatName']),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (){},
            title: Image.asset(product['subCatProList'][1]['pImgUrl'],),
            subtitle:Text( product['subCatProList'][1]['pName']),
            leading:  Text(product['subCatProList'][1]['pDesc']),
          )
        ],
      ),

    );
  }
}
