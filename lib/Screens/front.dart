import 'package:dairy/theme/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            SizedBox(height: 300,),
            ordernow_(),
          ],
        )
      ],
    );
  }
}
