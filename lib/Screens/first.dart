import 'package:dairy/Screens/second.dart';
import 'package:dairy/Widgets/top_bar.dart';
import 'package:dairy/cards/itemcard.dart';
import 'package:dairy/cards/nextBTN.dart';
import 'package:dairy/theme/background.dart';
import 'package:dairy/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => selectedcard(0),
                      child: item_card(
                          "The Perfect cow Milk",
                          12,
                          14,
                          15,
                          "assets/images/cow.png",
                          selectedcardindex == 0),
                    ),
                    GestureDetector(
                      onTap: () => selectedcard(1),
                      child: item_card(
                          "The Perfect Buffalo Milk",
                          10,
                          20,
                          18,
                          "assets/images/buffalo_.png",
                          selectedcardindex == 1),
                    ),
                    GestureDetector(
                      onTap: () => selectedcard(2),
                      child: item_card(
                          "The Perfect Butter-Milk",
                          12,
                          14,
                          15,
                          "assets/images/butterMilk_.png",
                          selectedcardindex == 2),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 60.0,top: 30),
                  child: IgnorePointer(
                    ignoring: selectedcardindex==-1,
                    child: GestureDetector(
                      onTap: () {
                       if(selectedcardindex!=-1)( Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pricescreen(product:selectedcardindex,)),
                        ));
                      },
                      child: customBTN(true),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
