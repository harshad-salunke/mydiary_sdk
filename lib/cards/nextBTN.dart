import 'package:dairy/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customBTN extends StatelessWidget {
  bool dir=false;


  customBTN(this.dir);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(

        border: Border.all(
          color: Colors.white,
              width: 2,
        ),
        shape: BoxShape.circle,
        color: Colors.transparent,
      ),


      child: Stack(
        alignment: Alignment.center,
        children: [

          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.primarygray,
            ),
          ),

          Icon(
            dir?Icons.arrow_forward_ios_sharp:Icons.arrow_back_ios_sharp,
            size: 40,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
