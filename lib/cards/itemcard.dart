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
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: AppColor.primarygray,
        borderRadius: BorderRadius.circular(10), // Container color
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.9), // Shadow color
            spreadRadius: 5, // Spread radius
            blurRadius: 10, // Blur radius
            offset: Offset(0, 3), // Offset from the top
          ),
        ],
        border: Border.all(
          color: select?AppColor.selectedbordercol:AppColor.primarybordercol,
 width: 3,
        )
      ),
      margin: EdgeInsets.only(left: 60),
      width: 350,
      height: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                smt,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                "with the hight ",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                    Text(
                    "Protin ",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.red,
                        ),
                  ),  Text(
                    "And ",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        ),
                  ),  Text(
                    "Calories ",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.yellow,
                        ),
                  ),

                ],
              ),



              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white, width: 1)),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal:25),
                  child: Text(
                    "Select",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(),
          
                 GestureDetector(
                     onTap: ()=>{
                       showDialog(context: context, builder: (context)=>AlertDialog(
                         backgroundColor: Colors.black,

                         actions: [
                           TextButton(onPressed: (){
                             Navigator.of(context).pop();
                           },
                           child: Text("Close"),
                           )
                         ],
                         title: Text("Product Details",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                         contentPadding: EdgeInsets.zero,

                         content: SingleChildScrollView(
                           child: Container(
                             child: Column(
                               children: [
                                 Row(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(left: 15,top:15),
                                       child: Text("Fat : ",style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 10
                                       ),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 15.0,top: 15),
                                       child: Text(Fat.toString(),style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 10
                                       ),),
                                     )
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(left: 15,top:5),
                                       child: Text("Calories : ",style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 10
                                       ),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 15.0,top: 5),
                                       child: Text(calories.toString(),style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 10
                                       ),),
                                     )
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(left: 15,top:5),
                                       child: Text("Protien : ",style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 10
                                       ),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 15.0,top: 5),
                                       child: Text(protine.toString(),style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 10
                                       ),),
                                     )
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(left: 15,top:5),
                                       child: Text("Product inserted Data : ",style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 10
                                       ),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 15.0,top: 5),
                                       child: Text("----:----",style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 10
                                       ),),
                                     )
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(left: 15,top:5),
                                       child: Text("Product Expiry Data : ",style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 10
                                       ),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 15.0,top: 5),
                                       child: Text("----:----",style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 10
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
                     child: Icon(CupertinoIcons.exclamationmark_octagon)),

              Container(
                width: 120,
                height: 120,
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10,)
            ],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
