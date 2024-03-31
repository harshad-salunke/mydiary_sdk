import 'package:dairy/theme/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/compname.dart';
import '../Widgets/ordernow.dart';
import '../Widgets/top_bar.dart';

class Front_ extends StatelessWidget {
  const Front_({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backscreen(),
        Column(

          children: [

            SizedBox(height: 20,),
            topbar(),
            comp_name( theheight: 100.0, thewidth: 450.0, theChild: Text("Dairy Despensory",style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontSize: 40
            ),),),
            SizedBox(height: 300,),
            comp_name( theheight: 100.0, thewidth: 450.0, theChild:ordernow_(),
    ),


          ],
        )
      ],
    );
  }
}
