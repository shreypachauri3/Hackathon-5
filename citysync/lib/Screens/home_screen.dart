import 'package:citysync/SOS/Dashboard/Dashboard.dart';
import 'package:citysync/Screens/food_sect.dart';
import 'package:citysync/Screens/views/home.dart';
import 'package:citysync/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  var user=FirebaseAuth.instance.currentUser!.displayName;
@override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
    body: ListView(
      
      children:[ 
        Container(
          
          width: size.width*1.00,
          height: size.height*0.174673,
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
          height: size.height*0.05822433,
          color: Colors.transparent,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
                  width: size.width*1.00,
          height: size.height*0.07278042,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello",style: Styles.headLineStyle3,),
                        //Gap(AppLayout.getHeight(5)),
                        Text("$user,",style: Styles.headLineStyle1,),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(80),
                      width: AppLayout.getWidth(120),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
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
                Container(
                  width: size.width*1.00,
          height: size.height*0.01455608,
          color: Colors.transparent,
                ),
                Container(
                  width: size.width*1.00,
          height: size.height*0.02911217,
          //color: Colors.white,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),topRight: Radius.circular(AppLayout.getHeight(16))),
            color: Styles.bgColor,
          ),
          
                ),

                

                
              ]),
            ),
             SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                
    
    SizedBox(
      width: size.width*0.30,
      height: size.height*0.22,
      child: 
      Column(
        children: [
          InkWell(
            onTap:(){ Navigator.push(context,MaterialPageRoute(builder:(context) => Dashboard(),));},
            child: Container(
                margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04)),
                height: size.height*0.174,
                width: size.width*0.30,
                
                decoration: BoxDecoration(
                  image: const DecorationImage(
                                image: NetworkImage(
                                "https://i.ibb.co/xGZGqm6/undraw-Warning-re-eoyh-1.png",
                                  )
                                ),
                      borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      
                      color: Colors.white,
                ),
                          ),
          ),
                        Container(
              margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04)),
              height: size.height*0.04,
              width: size.width*0.30,
              
              decoration: BoxDecoration(
                
                    // borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                    // border: Border.all(
                    //   color: Colors.grey,
                    //   width: 0.5,
                    // ),
                    
                    
                    color: Colors.transparent,
              ),
              child:Column(
                children: [
                  SizedBox(height:2),Text(
        'Emergency',
        style: Styles.headLineStyle3_1,
      ),],
              )
                    
      
                        ),
        ],
      ),
                    

    ),
    
    SizedBox(
      width: size.width*0.30,
      height: size.height*0.22,
      child: 
      Column(
        children: [
          InkWell(
            onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));},
            child: Container(
                margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04)),
                height: size.height*0.174,
                width: size.width*0.30,
                
                decoration: BoxDecoration(
                  image: const DecorationImage(
                                image: NetworkImage(
                                "https://i.ibb.co/CKgGbHn/undraw-medicine-b1ol.png",
                                  )
                                ),
                      borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      
                      color: Colors.white,
                ),
                          ),
          ),
                        Container(
              margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04)),
              height: size.height*0.04,
              width: size.width*0.30,
              
              decoration: BoxDecoration(
                
                    // borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                    // border: Border.all(
                    //   color: Colors.grey,
                    //   width: 0.5,
                    // ),
                    
                    
                    color: Colors.transparent,
              ),
              child:Column(
                children: [
                  SizedBox(height:2),Text(
        'Health',
        style: Styles.headLineStyle3_1,
      ),],
              )
                    
      
                        ),
        ],
      ),
                    

    ),
    
    SizedBox(
      width: size.width*0.30,
      height: size.height*0.22,
      child: 
      Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => FoodSectPage(),));
            },
            child: Container(
                margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04)),
                height: size.height*0.174,
                width: size.width*0.30,
                
                decoration: BoxDecoration(
                  image: const DecorationImage(
                                image: NetworkImage(
                                "https://i.ibb.co/WH55pyS/undraw-breakfast-psiw.png",
                                  )
                                ),
                      borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      
                      color: Colors.white,
                ),
                          ),
          ),
                        Container(
              margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04)),
              height: size.height*0.04,
              width: size.width*0.30,
              
              decoration: BoxDecoration(
                
                    // borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                    // border: Border.all(
                    //   color: Colors.grey,
                    //   width: 0.5,
                    // ),
                    
                    
                    color: Colors.transparent,
              ),
              child:Column(
                children: [
                  SizedBox(height:2),Text(
        'Food',
        style: Styles.headLineStyle3_1,
      ),],
              )
                    
      
                        ),
        ],
      ),
                    

    ),
    
     SizedBox(
      width: size.width*0.30,
      height: size.height*0.22,
      child: 
      Column(
        children: [
          Container(
              margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04)),
              height: size.height*0.174,
              width: size.width*0.30,
              
              decoration: BoxDecoration(
                image: const DecorationImage(
                              image: NetworkImage(
                              "https://i.ibb.co/2t0JG9y/undraw-education-f8ru-1.png",
                                )
                              ),
                    borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    
                    color: Colors.white,
              ),
                        ),
                        Container(
              margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04)),
              height: size.height*0.04,
              width: size.width*0.30,
              
              decoration: BoxDecoration(
                
                    // borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                    // border: Border.all(
                    //   color: Colors.grey,
                    //   width: 0.5,
                    // ),
                    
                    
                    color: Colors.transparent,
              ),
              child:Column(
                children: [
                  SizedBox(height:2),Text(
        'Education',
        style: Styles.headLineStyle3_1,
      ),],
              )
                    
      
                        ),
        ],
      ),
                    

    ),
    
     SizedBox(
      width: size.width*0.30,
      height: size.height*0.22,
      child: 
      Column(
        children: [
          Container(
              margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04)),
              height: size.height*0.174,
              width: size.width*0.30,
              
              decoration: BoxDecoration(
                image: const DecorationImage(
                              image: NetworkImage(
                              "https://i.ibb.co/xGZGqm6/undraw-Warning-re-eoyh-1.png",
                                )
                              ),
                    borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    
                    color: Colors.white,
              ),
                        ),
                        Container(
              margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04)),
              height: size.height*0.04,
              width: size.width*0.30,
              
              decoration: BoxDecoration(
                
                    // borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                    // border: Border.all(
                    //   color: Colors.grey,
                    //   width: 0.5,
                    // ),
                    
                    
                    color: Colors.transparent,
              ),
              child:Column(
                children: [
                  SizedBox(height:2),Text(
        'Municipal',
        style: Styles.headLineStyle3_1,
      ),],
              )
                    
      
                        ),
        ],
      ),
                    

    ),
    
    SizedBox(
      width: size.width*0.34
      ,
      height: size.height*0.22,
      child: 
      Column(
        children: [
          Container(
              margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04),right:AppLayout.getHeight(size.width*0.04)),
              height: size.height*0.174,
              width: size.width*0.34,
              
              decoration: BoxDecoration(
                image: const DecorationImage(
                              image: NetworkImage(
                              "https://i.ibb.co/JK7Dct5/undraw-Interview-re-e5jn-1.png",
                                )
                              ),
                    borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    
                    color: Colors.white,
              ),
                        ),
                        Container(
              margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04)),
              height: size.height*0.04,
              width: size.width*0.30,
              
              decoration: BoxDecoration(
                
                    // borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                    // border: Border.all(
                    //   color: Colors.grey,
                    //   width: 0.5,
                    // ),
                    
                    
                    color: Colors.transparent,
              ),
              child:Column(
                children: [
                  SizedBox(height:2),Text(
        'Employment',
        style: Styles.headLineStyle3_1,
      ),],
              )
                    
      
                        ),
        ],
      ),
                    

    ),
    
    ],
            ),
            
          ),

         Container(
                  width: size.width*1.00,
          height: size.height*0.01455608,
          color: Colors.transparent,
                ),
                Container(
  height: 1.0,
  width: double.infinity, // make the container span the full width
  decoration: BoxDecoration(
    border: Border.all(
      color: Colors.grey.withOpacity(0.5), // set the color of the line
      width: 1.0, // set the width of the line
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5), // set the color of the shadow
        spreadRadius: 1.0, // set the spread radius of the shadow
        blurRadius: 3.0, // set the blur radius of the shadow
        offset: Offset(0, 1), // set the offset of the shadow
      ),
    ],
  ),
),    
                Container(
  padding: EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Are you in Pain?',
        style: Styles.headLineStyle3_1,
      ),
      SizedBox(height: 10),
      Row(
        children: <Widget>[
          Expanded(
            child: Column(children: [
  
Container(
          margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(size.width*0.00),vertical:AppLayout.getHeight(size.height*0.00) ),
          height: size.height*0.209,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            color: Colors.white,
          ),
          child: 
          Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
          margin: EdgeInsets.only(top:AppLayout.getHeight(size.width*0.04),left:AppLayout.getHeight(size.width*0.04),right:AppLayout.getHeight(size.width*0.04)),
          height: size.height*0.18,
          width: size.width*0.54,
          
          decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                // border: Border.all(
                //   color: Colors.grey,
                //   width: 0.5,
                // ),
                color: Colors.white,
          ),
          child: Column(children: [Container(
          //margin: EdgeInsets.only(top:AppLayout.getHeight(size.width*0.04),left:AppLayout.getHeight(size.width*0.04),right:AppLayout.getHeight(size.width*0.04)),
          height: size.height*0.12,
          width: size.width*0.54,
          
          decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                // border: Border.all(
                //   color: Colors.grey,
                //   width: 0.0,
                // ),
                color: Colors.white,
          ),
          child:Column(
                children: [
                  SizedBox(height:2),Text(
        'Try this when you need First Aid.',
        style: Styles.headLineStyle3_1,
      ),],
              ),),

          Container(
          //margin: EdgeInsets.only(top:AppLayout.getHeight(size.width*0.04),left:AppLayout.getHeight(size.width*0.04),right:AppLayout.getHeight(size.width*0.04)),
          height: size.height*0.058,
          width: size.width*0.54,
          
          decoration: BoxDecoration(
            
               // borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                // border: Border.all(
                //   color: Colors.grey,
                //   width: 0.0,
                // ),
                color: Colors.white,
          ),
          child: Column(
            children:[
              ElevatedButton(
                
                    
                    onPressed: () {},
                    child: Text('Get Started'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple, // sets the button's fill color
                      onPrimary: Colors.white, // sets the button's text and icon color
                      onSurface: Colors.grey, // sets the button's text and icon color when disabled
                      shadowColor: Colors.black, // sets the color of the button's shadow
                    ),
              ),
          ],
          ),
          ),

          ]),
                    ),
             Container(
         margin: EdgeInsets.only(top:AppLayout.getHeight(size.width*0.04),right:AppLayout.getHeight(size.width*0.04)),
          height: size.height*0.18,
          width: size.width*0.253333333333,
          decoration: BoxDecoration(
            image: const DecorationImage(
                          image: NetworkImage(
                          "https://i.ibb.co/sg7RQmJ/undraw-medical-care-movn.png",
                            )
                          ),
                // borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                // border: Border.all(
                //   color: Colors.grey,
                //   width: 0.5,
                // ),
                
               // color: Colors.black,
          ),
                    ),
                    
              ],
            ),
            
      //       SizedBox(height: 20),
      // 

            
          ]
          ),
               
      ),

            ],)
          ),
          
        ],
      ),
      
      
      
    
    ],
  ),
), 

Container(
  padding: EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Available Govt. schemes',
        style: Styles.headLineStyle3_1,
      ),
      SizedBox(height: 10),
      Row(
        children: <Widget>[
          Expanded(
            child: Column(children: [
  
Container(
          margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(size.width*0.00),vertical:AppLayout.getHeight(size.height*0.00) ),
          height: size.height*0.209,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            color: Colors.white,
          ),
          child: 
          Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
          margin: EdgeInsets.only(top:AppLayout.getHeight(size.width*0.04),left:AppLayout.getHeight(size.width*0.04),right:AppLayout.getHeight(size.width*0.04)),
          height: size.height*0.18,
          width: size.width*0.54,
          
          decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                // border: Border.all(
                //   color: Colors.grey,
                //   width: 0.5,
                // ),
                color: Colors.white,
          ),
          child: Column(children: [Container(
          //margin: EdgeInsets.only(top:AppLayout.getHeight(size.width*0.04),left:AppLayout.getHeight(size.width*0.04),right:AppLayout.getHeight(size.width*0.04)),
          height: size.height*0.12,
          width: size.width*0.54,
          
          decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                // border: Border.all(
                //   color: Colors.grey,
                //   width: 0.0,
                // ),
                color: Colors.white,
          ),
          child:Column(
                children: [
                  SizedBox(height:2),Text(
        'Be aware of all the schemes available for you',
        style: Styles.headLineStyle3_1,
      ),],
              ),),

          Container(
          //margin: EdgeInsets.only(top:AppLayout.getHeight(size.width*0.04),left:AppLayout.getHeight(size.width*0.04),right:AppLayout.getHeight(size.width*0.04)),
          height: size.height*0.058,
          width: size.width*0.54,
          
          decoration: BoxDecoration(
            
               // borderRaElevatedButtondius: BorderRadius.circular((AppLayout.getHeight(14))),
                // border: Border.all(
                //   color: Colors.grey,
                //   width: 0.0,
                // ),
                color: Colors.white,
          ),
          child: Column(
            children:[
              ElevatedButton(
                
                    
                    onPressed: () {},
                    child: Text('Explore!'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple, // sets the button's fill color
                      onPrimary: Colors.white, // sets the button's text and icon color
                      onSurface: Colors.grey, // sets the button's text and icon color when disabled
                      shadowColor: Colors.black, // sets the color of the button's shadow
                    ),
              ),
          ],
          ),
          ),

          ]),
                    ),
             Container(
         margin: EdgeInsets.only(top:AppLayout.getHeight(size.width*0.04),right:AppLayout.getHeight(size.width*0.04)),
          height: size.height*0.18,
          width: size.width*0.253333333333,
          decoration: BoxDecoration(
            image: const DecorationImage(
                          image: NetworkImage(
                          "https://i.ibb.co/KLJ1G3B/undraw-color-schemes-wv48.png",
                            )
                          ),
                // borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
                // border: Border.all(
                //   color: Colors.grey,
                //   width: 0.5,
                // ),
                
               // color: Colors.black,
          ),
                    ),
                    
              ],
            ),
            
      //       SizedBox(height: 20),
      // 

            
          ]
          ),
               
      ),

            ],)
          ),
          
        ],
      ),
      
      
      
    
    ],
  ),
), 

  
SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
    
    
    SizedBox(
      width: size.width*0.65,
      height: size.height*0.25,
      child: Container(
        decoration: BoxDecoration(
                color: Colors.green[50],
                ), child: Column(
          
          mainAxisSize: MainAxisSize.min,
          children:[
            Container(margin: EdgeInsets.only(left: AppLayout.getHeight(size.width*0.04),right: AppLayout.getHeight(size.width*0.02),top:AppLayout.getHeight(size.height*0.01144392) ),
          height: size.height*0.04,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
            // border: Border.all(
            //   color: Colors.grey,
            //   width: 0.5,
            // ),
            color: Colors.transparent,
          ),
          child:Column(
                children: [
                  SizedBox(height:2),Text(
        'Local Events >  ',
        style: Styles.headLineStyle3_1,
      ),],
              ),
                ),Container(margin: EdgeInsets.only(left: AppLayout.getHeight(size.width*0.04),right: AppLayout.getHeight(size.width*0.02),top:AppLayout.getHeight(size.height*0.01144392) ),
          height: size.height*0.07163902,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            color: Colors.white,
          ),
                ),
                Container(margin: EdgeInsets.only(left:AppLayout.getHeight(size.width*0.04),right: AppLayout.getHeight(size.width*0.02),top:AppLayout.getHeight(size.height*0.016) ),
          height: size.height*0.07163902,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
            border: Border.all(
              color: Colors.grey,
              width: 0.4,
            ),
            color: Colors.white,
          ),
                ),  
                  
            
          ]
        ),
      ),
    ),
    SizedBox(
      width: size.width*0.02,
      height: size.height*0.25,
      child: Container(
        decoration: BoxDecoration(
                color: Colors.green[50],
                ),child: Column(
          
          mainAxisSize: MainAxisSize.min,
          children:[Container( margin: EdgeInsets.only(right: AppLayout.getHeight(size.width*0.02),top:AppLayout.getHeight(size.height*0.04144392) ),
          height: size.height*0.20,
          decoration: BoxDecoration(
           // borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
            border: Border.all(
              color: Colors.black,
              width: 0.1,
            ),
            color: Colors.white,
          ),
                ), 
                  
            
          ]
        ),
      ),
    ),

    SizedBox(
      width: size.width*0.314,
      height: size.height*0.25,
      child: Container(
        decoration: BoxDecoration(
                color: Colors.green[50],
                ),child: Column(
          children: [
            Container( margin: EdgeInsets.only(right: AppLayout.getHeight(size.width*0.02),top:AppLayout.getHeight(size.height*0.01144392) ),
          height: size.height*0.01,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
            // border: Border.all(
            //   color: Colors.grey,
            //   width: 0.5,
            // ),
            // color: Colors.white,
          ),
          child:Column(
                
              ),
                ),
                Container( margin: EdgeInsets.only(right: AppLayout.getHeight(size.width*0.02),top:AppLayout.getHeight(size.height*0.01144392) ),
          height: size.height*0.188,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((AppLayout.getHeight(14))),
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            color: Colors.white,
            image: const DecorationImage(
                              image: NetworkImage(
                              "https://i.ibb.co/wKrd8TL/fraud.png",
                              
                                )
                              ),
          ),
          
          

                ),
          ],  
          
                ),
      ),
    ), 
    








    ],
            ),
            
          ),
Container(
  padding: EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Helpline Numbers',
        style: Styles.headLineStyle3_1,
      ),
    ],
  ),
),




SizedBox(
      width: size.width*0.60,
      height: size.height*0.45,
      child: 
      Container(
        decoration: BoxDecoration(
                color: Colors.transparent,
                ),
        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          children:[Row(
            children: [
              Container(
             margin: EdgeInsets.only(left: AppLayout.getHeight(size.width*0.04) ),
             padding: EdgeInsets.all(AppLayout.getHeight(size.width*0.04)),
          height: size.width*0.305,
          width: size.width*0.305,
          decoration: BoxDecoration(
            image: const DecorationImage(
                              image: NetworkImage(
                              "https://i.ibb.co/8Yyhdtq/1st.png",
                              
                                )
                              ),
            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(14)),
                          
                        ),
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            color: Colors.white,
          ),
                
              ),
 Container(
              
         // padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(size.width*0.04)),
          //margin: EdgeInsets.only(left: AppLayout.getHeight(size.width*0.04),top:AppLayout.getHeight(size.height*0.01144392) ),
          height: size.width*0.305,
          width: size.width*0.305,
          decoration: BoxDecoration(
            image: const DecorationImage(
                              image: NetworkImage(
                              "https://i.ibb.co/s93CxdJ/2nd.png",
                              
                                )
                              ),
          // borderRadius: BorderRadius.only(
          //               topLeft: Radius.circular(AppLayout.getHeight(14)),
                        
          //             ),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
          color: Colors.white,
          ),
              
            ),

            Container(
               height: size.width*0.305,
          width: size.width*0.305,
          decoration: BoxDecoration(
            image: const DecorationImage(
                              image: NetworkImage(
                              "https://i.ibb.co/YLSw56p/3rd.png",
                              
                                )
                              ),
            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(14)),
                          
                        ),
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            color: Colors.white,
          ),
                
              )

            
            ]), 
                  
                Row(
                  children: [
              Container(
             margin: EdgeInsets.only(left: AppLayout.getHeight(size.width*0.04) ),
          height: size.width*0.305,
          width: size.width*0.305,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(AppLayout.getHeight(14)),
                          
                        ),
                        image: const DecorationImage(
                              image: NetworkImage(
                              "https://i.ibb.co/LvvZw1m/4th.png",
                              
                                )
                              ),
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            color: Colors.white,
          ),
                
              ),
 Container(
              
         // padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(size.width*0.04)),
          //margin: EdgeInsets.only(left: AppLayout.getHeight(size.width*0.04),top:AppLayout.getHeight(size.height*0.01144392) ),
          height: size.width*0.305,
          width: size.width*0.305,
          decoration: BoxDecoration(
            image: const DecorationImage(
                              image: NetworkImage(
                              "https://i.ibb.co/8Yyhdtq/1st.png",
                              
                                )
                              ),
          // borderRadius: BorderRadius.only(
          //               topLeft: Radius.circular(AppLayout.getHeight(14)),
                        
          //             ),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
          color: Colors.white,
          ),
              
            ),

            Container(
               height: size.width*0.305,
          width: size.width*0.305,
          decoration: BoxDecoration(
            image: const DecorationImage(
                              image: NetworkImage(
                              "https://i.ibb.co/fSY9LB7/6th.png",
                              
                                )
                              ),
            borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(AppLayout.getHeight(14)),
                          
                        ),
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            color: Colors.white,
          ),
                
              )

            
            ]), 
                  
            
          ]
        ),
      ),
    ),





   
       

                   
               
          
          
            

      ],  
    ),
    );
    
  }
}