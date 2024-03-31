import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class topbar extends StatelessWidget {
  const topbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            width: 150,
            height: 150,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
            )
        ),
        Container(width: 500,),
        const Text("Milk DISPENSER",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent,
            decoration: TextDecoration.none
        ),),
        // SizedBox(),
      ],
    ),
    );
  }
}
