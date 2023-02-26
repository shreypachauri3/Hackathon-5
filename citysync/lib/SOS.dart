import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';




class SOS extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOS Buzzer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SOS Buzzer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ required this.title}) ;

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Send Alert"),
      ),
      body: bodyData(),
    );
  }

  Future<void> _neverSatisfied(var first) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Your Location'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[Text("${first.addressLine}")],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget bodyData() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Ink(
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.all_inclusive,
                    color: Colors.blueAccent,
                  ),
                  iconSize: 150.0,
                  splashColor: Colors.redAccent,
                  padding: EdgeInsets.all(40.0),
                  onPressed: () {
                    
                  },
                )),
            Padding(
              padding: EdgeInsets.all(25.0),
            ),
            Text(
              "Send Emergency Alert.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.2,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
}