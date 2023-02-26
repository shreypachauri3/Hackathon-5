import 'package:citysync/SOS/Dashboard/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart' as appPermissions;
import 'package:pinput/pinput.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Dashboard extends StatefulWidget {
  final int pageIndex;
  const Dashboard({ this.pageIndex = 0}) ;

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  late List<Widget> screens = [Home()];
  late bool alerted = false;
  late int currentPage = 0;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  late bool pinChanged = false;
  

  @override
  void initState() {
    super.initState();
    checkAlertSharedPreferences();
   
  }

  late SharedPreferences prefs;
  checkAlertSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    if (mounted)
      setState(() {
        alerted = prefs.getBool("alerted") ?? false;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFCFE),
      floatingActionButton: currentPage == 1
          ? FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 155, 10, 228),
              onPressed: () {
                
              },
              child: Image.asset(
                "assets/add-contact.png",
                height: 60,
              ),
            )
          : FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 174, 8, 225),
              onPressed: () async {
               
              },
              child: alerted
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/images/title-1.png",
                          height: 24,
                        ),
                        Text("STOP")
                      ],
                    )
                  : Image.asset(
                      "assets/images/title-1.png",
                      height: 36,
                    ),
            ),
      
      body: SafeArea(child: screens[currentPage]),
    );
  }

  
  

  

}
