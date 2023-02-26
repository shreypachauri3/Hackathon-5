import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:location/location.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator/geolocator.dart';

/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the 
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}



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
                  onPressed: () async {
                    Position? position = await Geolocator.getLastKnownPosition();
                    print(position!.longitude);
                    var db = FirebaseFirestore.instance;
                    final city = <String, double>{
  "latitude": position.latitude,
  "longitude": position.longitude,
                    };
  db
    .collection("Emergencies")
    .doc(FirebaseAuth.instance.currentUser!.displayName)
    .set(city)
    .onError((e, _) => print("Error writing document: $e"));



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