import 'package:dairy/Screens/thanks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dairy/Screens/third.dart';
import 'package:dairy/Widgets/top_bar.dart';
import 'package:dairy/cards/itemcard.dart';
import 'package:dairy/cards/nextBTN.dart';
import 'package:dairy/cards/price_card.dart';
import 'package:dairy/theme/background.dart';
import 'package:dairy/theme/colors.dart';
import 'package:flutter/widgets.dart';

class pricescreen extends StatefulWidget {

  final int product;
  const pricescreen({super.key,required this.product});

  @override
  State<pricescreen> createState() => _pricescreenState();
}



class _pricescreenState extends State<pricescreen> {
  int selectedcardindex = -1;
  String img='';
  String product='';
  int total=-1;
  int pp=0;
  // int current=0;

  @override
  void initState() {
    if(widget.product==0){
      img='assets/images/cow.png';
      product='Cow Milk';
      pp=25;
    }else if(widget.product==1){
      img='assets/images/buffalo_.png';
      product='Buffalo Milk';
      pp=33;
    }
    else{
      img='assets/images/butterMilk_.png';
      product='Butter Milk';
      pp=40;
    }
  }

  void selectedcard(int index) {
    setState(() {
      selectedcardindex = index;
      if(selectedcardindex==0){
        total=pp*1;
      }else if(selectedcardindex==1){
        total=pp*2;
      }
      else{
        total=pp*4;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          backscreen(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 20,),
              topbar(),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(onTap: () => selectedcard(0),
                      child: price(img, 250, selectedcardindex == 0,pp*1),
                    ),
                    GestureDetector(onTap: () => selectedcard(1),
                      child: price(img, 500, selectedcardindex == 1,pp*2),
                    ),
                    GestureDetector(onTap: () => selectedcard(2),
                      child: price(img, 1000, selectedcardindex == 2,pp*4),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
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
                        showDialog(context: context, builder: (context) =>
                            AlertDialog(
                              backgroundColor: Colors.black,
                              actions: [
                                TextButton(onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                  child: Text("Close",style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'fonts/bolt-semibold.ttf',
                                  ),),
                                ),
                                SizedBox(width: 90,),
                                TextButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => payment()));
                                },
                                  child: Text("Continue",style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'fonts/bolt-semibold.ttf',
                                  ),),
                                )
                              ],
                              title: Text("Summary",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    color: Colors.white),),
                              contentPadding: EdgeInsets.zero,
                              content: SingleChildScrollView(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 15, top: 15),
                                            child: Text("Product : ",
                                              style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'fonts/bolt-semibold.ttf',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15.0, top: 15),
                                            child: Text(product,
                                              style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'fonts/bolt-semibold.ttf',),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 15, top: 5),
                                            child: Text("Quantity : ",
                                              style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'fonts/bolt-semibold.ttf',),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15.0, top: 5),
                                            child: Text("500ML",
                                              style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'fonts/bolt-semibold.ttf',),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 15, top: 5),
                                            child: Text("Price : ",
                                              style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'fonts/bolt-semibold.ttf',),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15.0, top: 5),
                                            child: Text(total.toString(),
                                              style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'fonts/bolt-semibold.ttf',),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ))
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: customBTN(true),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,)
            ],
          ),
        ],
      ),
    );
  }
}
