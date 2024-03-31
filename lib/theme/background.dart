import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class backscreen extends StatelessWidget {
  const backscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // child: Image.asset(
        //   'assets/images/backgroundimage1.png',
        //   fit: BoxFit.cover,
        // )
    );
  }
}
