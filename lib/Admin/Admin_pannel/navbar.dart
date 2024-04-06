import 'package:flutter/material.dart';

class nav_ extends StatelessWidget {
  const nav_({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:   Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellowAccent,
                  border: Border.all(color: Colors.black54, width: 1)),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal:25),
              child: Text(
                "Payment Mode",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(),
            Text("SET UP YOUR MACHINE",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(),
            Image.asset("assets/images/logo.png",
              height: 120,width: 120,)
          ],
        ),
      ),
    );
  }
}
