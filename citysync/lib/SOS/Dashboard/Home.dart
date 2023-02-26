import 'dart:math';

import 'package:citysync/SOS/Dashboard/DashWidgets/DashAppbar.dart';
import 'package:citysync/SOS/Dashboard/DashWidgets/Emergency.dart';
import 'package:citysync/SOS/Dashboard/DashWidgets/LiveSafe.dart';
import 'package:citysync/SOS/Dashboard/DashWidgets/SafeHome.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int quoteIndex = 0;
  @override
  void initState() {
    super.initState();
    getRandomInt(false);
  }

  getRandomInt(fromClick) {
    Random rnd = Random();

    quoteIndex = rnd.nextInt(4);
    if (mounted && fromClick) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DashAppbar(
          getRandomInt: getRandomInt,
          quoteIndex: quoteIndex,
        ),
        Expanded(
          child: Container(
            child: ListView(
              shrinkWrap: true,
              children: [
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Emergency",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          
                        },
                        child: Text("See More"),
                      ),
                    ],
                  ),
                ),
                Emergency(),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, bottom: 10, top: 10),
                  child: Text(
                    "Explore LiveSafe",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                LiveSafe(),
                SafeHome(),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
