import 'package:dairy/Screens/thanks.dart';
import 'package:dairy/Widgets/top_bar.dart';
import 'package:dairy/theme/background.dart';
import 'package:flutter/material.dart';

import 'animation.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  void initState() {
    super.initState();
    // Wait for 10 seconds and then navigate to the second screen
    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => anim()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
  int time =12;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          backscreen(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10,),
              topbar(),
              SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Milk Despensor LTD",style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'bolt-regular.ttf'
                  ),),
                  SizedBox(height: 5,),
                  Text("\$80.0",style: TextStyle(fontSize: 30,
                      fontFamily: 'bolt-regular.ttf',
                ),),
                  SizedBox(height: 5,),
                  Text("Payment Referance",style: TextStyle(
                    fontSize: 15, fontFamily: 'bolt-regular.ttf'
                  ),),
                  SizedBox(height: 35,),

                  Container(
                    width: 250,
                    height: 250,
                    child: Image.asset("assets/images/qr.jpg"),
                  ),
                  SizedBox(height: 20,),
                  Text("Remaing Time : ${time}",style: TextStyle(
                    fontSize: 15, fontFamily: 'bolt-regular.ttf'
                  ),),
                  SizedBox(height: 10,),
                  Text("Status : Waiting",style: TextStyle(
                    fontSize: 15,
                      fontFamily: 'bolt-regular.ttf'
                  ),)
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}


