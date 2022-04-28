import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttersample/resources/images.dart';

void main() {
  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: Image.asset(hamburger),
          actions: [
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                margin: const EdgeInsets.all(10),
                child: Image.asset(search))
          ],
        ),
        body: Column(
          children: [
            Row(
              children: const [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Shop ",
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.pinkAccent),
                ),
                Text(
                  "Application ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20,
            ),
            Row(
              children: [
                const SizedBox(width: 14,),
                Flexible(
                  flex: 1,
                  child: FlatButton(
                    onPressed: () {
                      print("Button Pressed");
                    },
                    child: const Text(
                      "Home Decore",
                      style: TextStyle(color: Colors.white, fontSize: 13,fontWeight:FontWeight.bold),
                    ),
                    shape: const StadiumBorder(),
                    color: Colors.pink[100],
                  ),
                ),
                const SizedBox(width: 5,),
                Flexible(
                  flex: 1,
                  child: FlatButton(
                    onPressed: () {
                      print("Button Pressed");
                    },
                    child: const Text(
                      "Bath & Body",
                      style: TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.bold),
                    ),
                    shape: const StadiumBorder(),
                    color: Colors.pink[100],
                  ),
                ),
                const SizedBox(width: 5,),
                Flexible(
                  flex: 1,
                  child: FlatButton(
                    onPressed: () {
                      print("Button Pressed");
                    },
                    child: const Text(
                      " Beauty ",
                      style: TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.bold),
                    ),
                    shape: const StadiumBorder(),
                    color: Colors.pink[100],
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.white,

              ),
            )
          ],
        ),
      ),
    );
  }
}
