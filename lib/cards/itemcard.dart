import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class item_card extends StatelessWidget {
  String smt;
  int Fat;
  int protine;
  int calories;
  String img;
  bool select;

  item_card(this.smt, this.Fat, this.protine, this.calories, this.img, this.select);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: select ? AppColor.selectedbordercol: AppColor.primarybordercol,
          borderRadius: BorderRadius.circular(25), // Container color
          boxShadow: [
            BoxShadow(
              color: Colors.white, // Shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 8, // Blur radius
              offset: Offset(4,4), // Offset from the top
            ),   BoxShadow(
              color:  AppColor.primarygray, // Shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 8, // Blur radius
              offset: Offset(-4,-4), // Offset from the top
            ),

          ],
          // border: Border.all(
          //   color: select ? AppColor.selectedbordercol : AppColor
          //       .primarybordercol,
          //   width: 3,
          // )
      ),
      margin: EdgeInsets.only(left: 60),
      width: 350,
      height: 250,

      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  smt,
                  style: TextStyle(
                    fontFamily: 'bolt-semibold.ttf',

                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                // SizedBox(),
                GestureDetector(
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
                                    fontFamily: 'bolt-regular.ttf',
                                  ),),
                                )
                              ],
                              title: Text("Product Details",
                                style: TextStyle(
                                    fontFamily: 'bolt-semibold.ttf',
                                    color: Colors.white),),
                              contentPadding: EdgeInsets.zero,

                              content: SingleChildScrollView(
                                child: Container(

                                  // height: 150,
                                  // width: 200,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, top: 15),
                                            child: Text(
                                              "Fat : ", style: TextStyle(

                                                fontFamily: 'bolt-regular.ttf',
                                                color: Colors.white,
                                                fontSize: 14
                                            ),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0, top: 15),
                                            child: Text(

                                              Fat.toString(), style: TextStyle(

                                                fontFamily: 'bolt-regular.ttf',
                                                color: Colors.white,
                                                fontSize: 14
                                            ),),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, top: 5),
                                            child: Text(

                                              "Calories : ", style: TextStyle(

                                                fontFamily: 'bolt-regular.ttf',
                                                color: Colors.white,
                                                fontSize: 14
                                            ),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0, top: 5),
                                            child: Text(calories.toString(),
                                              style: TextStyle(

                                                  fontFamily: 'bolt-regular.ttf',
                                                  color: Colors.white,
                                                  fontSize: 14
                                              ),),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, top: 5),
                                            child: Text(

                                              "Protien : ", style: TextStyle(

                                                fontFamily: 'bolt-regular.ttf',
                                                color: Colors.white,
                                                fontSize: 14
                                            ),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0, top: 5),
                                            child: Text(protine.toString(),
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14
                                              ),),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, top: 5),
                                            child: Text(
                                              "Product inserted Data : ",
                                              style: TextStyle(

                                                  fontFamily: 'bolt-regular.ttf',
                                                  color: Colors.white,
                                                  fontSize: 14
                                              ),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0, top: 5),
                                            child: Text(
                                              "----:----", style: TextStyle(

                                                fontFamily: 'bolt-regular.ttf',
                                                color: Colors.white,
                                                fontSize: 14
                                            ),),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, top: 5),
                                            child: Text("Product Expiry Data : ",
                                              style: TextStyle(
                                                  fontFamily: 'bolt-regular.ttf',
                                                  color: Colors.white,
                                                  fontSize: 14
                                              ),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0, top: 5),
                                            child: Text(
                                              "----:----", style: TextStyle(
                                                fontFamily: 'bolt-regular.ttf',
                                                color: Colors.white,
                                                fontSize: 14
                                            ),),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, top: 5),
                                            child: Text("Stock : ",
                                              style: TextStyle(
                                                  fontFamily: 'bolt-regular.ttf',
                                                  color: Colors.white,
                                                  fontSize: 14
                                              ),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0, top: 5),
                                            child: Text(
                                              "----:----", style: TextStyle(
                                                fontFamily: 'bolt-regular.ttf',
                                                color: Colors.white,
                                                fontSize: 14
                                            ),),
                                          )
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              )

                          ))
                    },
                    child: Icon(CupertinoIcons.exclamationmark_octagon,color: Colors.white,)),
              ],
            ),

            Container(
              width: 130,
              height: 130,
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white, width: 1)),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  "Select",
                  style: TextStyle(
                      fontFamily: 'bolt-semibold.ttf',
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }



  }

