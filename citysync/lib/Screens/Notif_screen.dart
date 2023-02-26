import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      // appBar: AppBar(
      //   title: const Text('Notifications'),
      // ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(0)),
        children: [
          Container(
          
          width: size.width*1.00,
          height: size.height*0.14,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
          colors: [Color(0xffe9e1f6),Color(0xff6539b3)],
          
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,

               // transform: GradientRotation(0.8)
                ),
              ),

              child: Column(children: [
                Container(
                  width: size.width*1.00,
          height: size.height*0.08,
          color: Colors.transparent,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
                  width: size.width*1.00,
          height: size.height*0.05,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        //Gap(AppLayout.getHeight(5)),
                        Text("Notifications",style: Styles.headLineStyle1,),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/title.png"
                            )
                          )
                      ),
                    )
            ],
            

          ),
                ),
                
                

                

                
              ]),
            ),
            
          SizedBox(height: AppLayout.getHeight(20)),
          _buildNotification(
            'New message',
            'You have received a new message from John.',
            'Just now',
            Colors.blue,
          ),
          SizedBox(height: AppLayout.getHeight(20)),
          _buildNotification(
            'New order',
            'You have a new order from Jane.',
            '2 minutes ago',
            Colors.green,
          ),
          SizedBox(height: AppLayout.getHeight(20)),
          _buildNotification(
            'Reminder',
            'Don\'t forget your appointment with Dr. Smith.',
            '1 hour ago',
            Colors.orange,
          ),
          SizedBox(height: AppLayout.getHeight(20)),
          _buildNotification(
            'New feature',
            'We have added a new feature to our app.',
            '1 day ago',
            Colors.purple,
          ),
          SizedBox(height: AppLayout.getHeight(20)),
        ],
      ),
    );
  }

  Widget _buildNotification(
      String title, String subtitle, String time, Color color) {
   // final size = AppLayout.getSize(context);
    return Container(
      margin:EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(20)) ,
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(20),
        vertical: AppLayout.getHeight(10),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: AppLayout.getWidth(8),
            height: AppLayout.getHeight(40),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
            ),
          ),
          SizedBox(width: AppLayout.getWidth(20)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Styles.headLineStyle2),
                SizedBox(height: AppLayout.getHeight(5)),
                Text(subtitle, style: Styles.headLineStyle3),
                SizedBox(height: AppLayout.getHeight(10)),
                Text(time, style: Styles.headLineStyle3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}