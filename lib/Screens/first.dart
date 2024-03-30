import 'package:dairy/Screens/second.dart';
import 'package:dairy/cards/itemcard.dart';
import 'package:dairy/cards/nextBTN.dart';
import 'package:dairy/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Itemscreen extends StatefulWidget {
  const Itemscreen({super.key});

  @override
  State<Itemscreen> createState() => _ItemscreenState();
}

class _ItemscreenState extends State<Itemscreen> {
   int selectedcardindex=-1;

  void selectedcard(int index){
    setState(() {
      selectedcardindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image.asset(
          //   'assets/images/backgroundimage1.png',
          //   fit: BoxFit.cover,
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 100),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "THE FRESH DAIRY PRODUCT",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primarygray,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: ()=>selectedcard(0),
                        child: item_card("The Perfet cow Milk", 12, 14, 15,
                            "assets/images/cow.png", selectedcardindex==0),
                      ),
                      GestureDetector(
                        onTap: ()=>selectedcard(1),
                        child: item_card("The Perfet Buffalo Milk", 10, 20, 18,
                            "assets/images/buffalo_.png", selectedcardindex==1),
                      ),
                      GestureDetector(
                        onTap: ()=>selectedcard(2),
                        child: item_card("The Perfet Buttor Milk", 12, 14, 15,
                            "assets/images/butterMilk_.png",
                        selectedcardindex==2),
                      ),
                    ],
                  ),
                ),
              ),


              Row(
                children: [

                  Expanded(child: Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>pricescreen()),);
                        },
                        child: customBTN(
                          true
                        ),
                      )
                  )
                  ),

                  SizedBox(width: 80,)



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
