import 'package:dairy/Screens/first.dart';
import 'package:dairy/theme/background.dart';
import 'package:dairy/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Widgets/frostedglass.dart';
import '../Widgets/ordernow.dart';
import '../Widgets/top_bar.dart';

class Front_ extends StatelessWidget {
  const Front_({super.key});

  @override
  Widget build(BuildContext context) {
    String status = "Not Connected";
    bool bt = false;
    return Stack(
      children: [
        backscreen(),
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            topbar(),

            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Icon(
                          bt
                              ? Icons.bluetooth_connected
                              : Icons.bluetooth_disabled,
                          size: 50,
                          color: bt ? AppColor.primarygray : AppColor.primarybordercol,
                        ),
                      ),

                      SizedBox(height: 10,),
                      Text(
                        status,
                        style: TextStyle(
                            fontSize: 10, fontFamily: 'bolt-semibold.ttf',
                        color: AppColor.primarygray,
                        decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
                frostedglass_(
                    theheight: 100.0,
                    thewidth: 450.0,
                    theChild: ShaderMask(
                      shaderCallback: (bounds) {
                        return AppColor.gradient1.createShader(
                            Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                      },
                      child: Text(
                        "Milk Despensory",
                        style: TextStyle(
                            fontFamily: 'bolt-semibold.ttf',
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: AppColor.order),
                      ),
                    ),
                    thecolor: Colors.transparent),
                SizedBox(),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ShaderMask(
              shaderCallback: (bounds) {
                return AppColor.gradient3.createShader(
                    Rect.fromLTRB(0, 0, bounds.width, bounds.height));
              },
              child: Text(
                "Farm-fresh goodness,",
                style: TextStyle(
                    fontFamily: 'bolt-regular.ttf',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 250),
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return AppColor.gradient3.createShader(
                      Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                },
                child: Text(
                  "dispensed just for you!",
                  style: TextStyle(
                      fontFamily: 'bolt-regular.ttf',
                      fontSize: 25,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Itemscreen()),
                );
              },
              child: frostedglass_(
                  theheight: 150.0,
                  thewidth: 450.0,
                  theChild: ordernow_(),
                  thecolor: AppColor.order),
            ),
            // SizedBox(height: 50,)
          ],
        )
      ],
    );
  }
}
