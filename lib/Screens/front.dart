import 'package:dairy/Admin/Admin_pannel/Admin_View.dart';
import 'package:dairy/Screens/first.dart';
import 'package:dairy/Screens/password.dart';
import 'package:dairy/bluetooth_service/services/blue_services.dart';
import 'package:dairy/theme/background.dart';
import 'package:dairy/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Widgets/frostedglass.dart';
import '../Widgets/ordernow.dart';
import '../Widgets/top_bar.dart';

class Front_ extends StatefulWidget {
  const Front_({super.key});

  @override
  State<Front_> createState() => _Front_State();
}

class _Front_State extends State<Front_> with TickerProviderStateMixin {

  late AnimationController _controller;

  BlueServices blueServices=BlueServices();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

      _controller.repeat(reverse: true);

  }

  @override
  void didUpdateWidget(covariant Front_ oldWidget) {
    super.didUpdateWidget(oldWidget);
      _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    String status = "Not Connected";
    int tapcount=0;
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
                InkWell(
                  onTap: (){
                    blueServices.triggerPipelineToConnect('B8:27:EB:38:FE:A7');
                  },
                  child: Container(
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
                ),
                GestureDetector(
                  onTap: (){
                    // setState(() {
                    //   tapcount++;
                    //   if(tapcount==5){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PinCodeWidget()),);

                    //     tapcount =0;
                    //   }
                    // });
                  },

                  child: frostedglass_(
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
                ),
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


            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.scale(
                  scale: 1 + _controller.value * 0.2,
                  child: Container(
                    width: 450,
                    height: 150,
                    child: GestureDetector(
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
                  ),
                );
              },
            ),

            // SizedBox(height: 50,)
          ],
        )
      ],
    );
  }
}
