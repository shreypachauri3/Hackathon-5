import 'package:citysync/SOS/Dashboard/DashWidgets/Emergencies/AmbulanceEmergency.dart';
import 'package:citysync/SOS/Dashboard/DashWidgets/Emergencies/FirebrigadeEmergency.dart';
import 'package:citysync/SOS/Dashboard/DashWidgets/Emergencies/PoliceEmergency.dart';
import 'package:flutter/material.dart';


class Emergency extends StatelessWidget {
  const Emergency();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceEmergency(),
          AmbulanceEmergency(),
          FireEmergency(),
          
        ],
      ),
    );
  }
}
