import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ordernow_ extends StatelessWidget {
  const ordernow_({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),

      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color: Colors.red
                ),
                child: Image.asset(
        'assets/images/cowface.png',
        fit: BoxFit.cover,
      ),
              ),
              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ORDER",style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.orange
                  ),),
                  Text("NOW",style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.orange
                  ),)
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
