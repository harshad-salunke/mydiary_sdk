import 'dart:convert';

import 'package:dairy/Screens/second.dart';
import 'package:dairy/Widgets/top_bar.dart';
import 'package:dairy/cards/itemcard.dart';
import 'package:dairy/cards/nextBTN.dart';
import 'package:dairy/theme/background.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Admin/Admin_pannel/details_model.dart';
class Itemscreen extends StatefulWidget {
  const Itemscreen({Key? key}) : super(key: key);

  @override
  State<Itemscreen> createState() => _ItemscreenState();
}

class _ItemscreenState extends State<Itemscreen> {
  int selectedcardindex = -1;

  void selectedcard(int index) {
    setState(() {
      selectedcardindex = index;
    });
  }

  List<Product> productDetails = [];
  List<String> img=[
    "assets/images/cow.png",
    "assets/images/buffalo_.png",
    "assets/images/butterMilk_.png",
  ];
  @override
  void initState() {
    super.initState();
    loadProductList();
  }
  void loadProductList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? productListJson = prefs.getString('productList');
    print(productListJson);
    if (productListJson != null) {
      List<dynamic> jsonList = jsonDecode(productListJson);
      setState(() {
        productDetails =
            jsonList.map((json) => Product.fromJson(json)).toList();
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          backscreen(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),
              topbar(),
              SizedBox(height: 80,),
              Container(
                height: 400,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                  
                    itemCount: productDetails.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          selectedcardindex=index;
                          setState(() {
                  
                          });
                        },
                          child: item_card(productDetails[index], img[index%3], selectedcardindex==index));
                    },
                  ),
                ),
              ),
              SizedBox(height:20),


              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: customBTN(false),
                    ),
                  ),
                  SizedBox(width: 80,),
                  IgnorePointer(
                    ignoring: selectedcardindex==-1,
                    child: GestureDetector(
                      onTap: () =>
                      {
                      if(selectedcardindex!=-1)(
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => pricescreen(product:selectedcardindex,)),
                      )),

                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: customBTN(true),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),

        ],
      ),
    );
  }
}
