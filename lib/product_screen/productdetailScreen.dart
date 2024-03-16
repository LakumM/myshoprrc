import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshoprrc/cus_widgets/container/cuscontainer.dart';
import 'package:myshoprrc/product_screen/productlist.dart';

class RRCProduct_Detail_screen extends StatefulWidget {

  Map<String,dynamic> prd_dtails ;
  RRCProduct_Detail_screen({required this.prd_dtails});

  @override
  State<RRCProduct_Detail_screen> createState() => _RRCProduct_Detail_screenState();
}

class _RRCProduct_Detail_screenState extends State<RRCProduct_Detail_screen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Column(children: [],),
      ),
      body:
        Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 11),
          child: SingleChildScrollView(
            child: Column(children: [
              Cus_Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    width: double.infinity,
                    height: 140,
                    child: Image.network(widget.prd_dtails['pImgUrl'],height: 120,width: double.infinity,)),
                    SizedBox(height: 20,),
                    Text("Name : ${widget.prd_dtails['pName']}"),
                    Text('Price '),
                    Text('MRP '),
                    Row(
                      children: [
                        Icon(CupertinoIcons.star,size: 15,),
                        Icon(CupertinoIcons.star,size: 15,),
                        Icon(CupertinoIcons.star,size: 15,),
                        Icon(CupertinoIcons.star,size: 15,),
                        Icon(CupertinoIcons.star,size: 15,),
                      ],
                    )
                  ],
                ),
                width: double.infinity,
                height: 240,
                ccolor: Colors.white,
                brRadi: BorderRadius.circular(8),
              ),
              Cus_Container(
                height: 180,
                width: double.infinity,
                ccolor: Colors.white,
                brRadi: BorderRadius.zero,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Center(child: Text('Product Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 10,),
                  Text('Model Name :', style: TextStyle(fontSize: 16),),
                  Text('Model No :', style: TextStyle(fontSize: 16),),
                  Text('Discription :', style: TextStyle(fontSize: 16),),
                  Text('Company :', style: TextStyle(fontSize: 16),),
                  Text('Brand Warranty :', style: TextStyle(fontSize: 16),),



                ],),
              )

            ],),
          ),

        )

    );
  }
}
