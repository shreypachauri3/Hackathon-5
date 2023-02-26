import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class FoodSectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            width: size.width * 1.00,
            height: size.height * 0.50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.ibb.co/M7Rd364/Design.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: size.width * 1.00,
                  height: size.height * 0.5,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.03,),
          SizedBox(height:2),Text(
        '    State-Wise NGO Directories :',
        style: Styles.headLineStyle3_1,
        
      ),
      SizedBox(height: size.height * 0.01,),
          
          
ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Andaman and Nicobar Islands'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/177/35/1';
         launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Andhra Pradesh'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/5757/28/1';
         launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Arunachal Pradesh'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/534/12/1';
         launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Assam'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/2631/18/1';
        launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Bihar'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/5631/10/1';
        launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Chandigarh'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/242/4/1';
        launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Chhattisgarh'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/2112/22/1';
       launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Dadra and Nagar Haveli'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/33/26/1';
         launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Daman and Diu'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/19/25/1';
         launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Delhi'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/12415/7/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Goa'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/304/30/1';
       launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Gujarat'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/7572/24/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Haryana'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/3829/6/1';
        launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Himachal Pradesh'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Jammu & Kashmir'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Jharkhand'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Karnataka'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Kerela'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Ladakh'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Lakshadweep'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Madhya Pradesh'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Maharashtra'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Manipur'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Meghalaya'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Mizoram'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Nagaland'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Orissa'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Puducherry'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Punjab'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Rajasthan'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Sikkim'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Tamil Nadu'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Telangana'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Tripura'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Uttar Pradesh'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Uttrakhand'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),ListTile(
          leading: Icon(Icons.location_city),
          title: Text('West Bengal'),
          onTap: () {
            String url = 'https://ngodarpan.gov.in/index.php/home/statewise_ngo/933/2/1';
          launch(url);
          },
        ),
        ],
      ),
    );
  }
}