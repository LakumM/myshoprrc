import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshoprrc/cus_widgets/decoration/textFieldDec.dart';
import 'package:myshoprrc/product_screen/productlist.dart';
import 'package:myshoprrc/product_screen/subproductscreen.dart';

class RRCMainProCatlog extends StatefulWidget {
  @override
  State<RRCMainProCatlog> createState() => _RRCState();
}

class _RRCState extends State<RRCMainProCatlog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/images/img_theme3.png',),fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Category',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: Column(
              children: [
                SizedBox(
                    child: GetRRCTextField(
                  lText: 'Search',
                  brColor: Colors.grey,
                  suicColor: Colors.grey,
                  sIcon: Icon(Icons.search_rounded),
                )),
                SizedBox(
                  height: 11,
                ),
                SizedBox(
                  height: 680,
                  width: double.infinity,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 5,
                        childAspectRatio: 4 / 3),
                    itemCount: RRC_Product_List.product_List.length,
                    itemBuilder: (context, index) => Column(children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RRCSubProductscreen(
                                          itemIndex: index,
                                        )));
                          },
                          child: Container(
                              padding: EdgeInsets.fromLTRB(6, 0, 10, 0),
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(blurRadius: 3, color: Colors.white24)
                                ],
                              ),
                              child: Stack(
                                children: [
                                  SizedBox(
                                    child: Text(
                                      // textAlign:  TextAlign.left,
                                      RRC_Product_List.product_List[index]
                                          ['mainCatName'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Center(
                                    child: SizedBox(
                                        width: double.infinity,
                                        child: Image.asset(
                                          RRC_Product_List.product_List[index]
                                              ['mainCatImage'],
                                          height: 100,
                                          width: 200,
                                        )),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
