import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../theme/colors.dart';

class ordernow_ extends StatelessWidget {
  const ordernow_({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
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
                children: [
                  ShaderMask(
                    shaderCallback: (bounds){
                      return AppColor.gradient1.createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                    },
                    child: Text("ORDER",style: TextStyle(
                        fontFamily: 'bolt-semibold.ttf' ,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: AppColor.order
                    ),),
                  ),
                  ShaderMask(
                    shaderCallback: (bounds){
                      return AppColor.gradient1.createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                    },
                    child: Text("NOW",style: TextStyle(
                        fontFamily: 'bolt-semibold.ttf' ,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: AppColor.order
                    ),),
                  )
                ],
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color: Colors.red
                ),
                child: Image.asset(
                  'assets/images/cowface2.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}
