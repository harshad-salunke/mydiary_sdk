import 'package:dairy/cards/itemcard.dart';
import 'package:dairy/cards/nextBTN.dart';
import 'package:dairy/cards/price_card.dart';
import 'package:dairy/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pricescreen extends StatefulWidget {
  const pricescreen({super.key});

  @override
  State<pricescreen> createState() => _pricescreenState();
}

class _pricescreenState extends State<pricescreen> {
  int selectedcardindex=-1;

  void selectedcard(int index){
    setState(() {
      selectedcardindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/backgroundimage1.png',
            fit: BoxFit.cover,
          ),
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
                      GestureDetector( onTap: ()=>selectedcard(0),
                          child: price("assets/images/cow.png",250,selectedcardindex==0)),
                      GestureDetector(onTap: ()=>selectedcard(1),
                          child: price("assets/images/buffalo_.png",500,selectedcardindex==1)),
                      GestureDetector(onTap: ()=>selectedcard(2),
                          child: price("assets/images/butterMilk_.png",1000,selectedcardindex==2)),
                    ],
                  ),
                ),
              ),


              Row(

                children: [
                  SizedBox(width: 150,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Expanded(child: Align(
                        alignment: Alignment.bottomLeft,
                        child: customBTN(false))
                    ),
                  ),Expanded(child: Align(
                      alignment: Alignment.bottomRight,
                      child: customBTN(true))
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
