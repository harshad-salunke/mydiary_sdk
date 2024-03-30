import 'package:dairy/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class price extends StatelessWidget {

  String img;
  int amount;
  bool select=false;


  price(this.img, this.amount,this.select);

  @override
  Widget build(BuildContext context) {
    double screenheight=MediaQuery.of(context).size.height;
    double screenwidth=MediaQuery.of(context).size.width;


    return Container(

      decoration: BoxDecoration(
          color: AppColor.primarygray,
          borderRadius: BorderRadius.circular(10), // Container color
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.9), // Shadow color
              spreadRadius: 5, // Spread radius
              blurRadius: 7, // Blur radius
              offset: Offset(0, 3), // Offset from the top
            ),
          ],
          border: Border.all(
            color: select?AppColor.selectedbordercol:AppColor.primarybordercol,
            width: 3,
          )
      ),
      margin: EdgeInsets.only(left: 60),
      width: 300,
      height:200,
      child: Row(
        children: [


          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 20.0),
                child: Text(amount.toString(),style: TextStyle(
                  color: Colors.white
                ),),
              ),

              SizedBox(height:20),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      border: Border.all(
                          color: Colors.white,
                          width: 1
                      )
                  ),
                  padding:  EdgeInsets.symmetric(vertical: 8,horizontal: 18),
                  child: Text("Select",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 6,
                    ),),
                ),
              ),

              SizedBox()
            ],
          ),

          SizedBox(width:40,),

          Container(
            width: 100,
            height: 100,
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20,),






        ],
      ),



    );
  }
}
