import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:citysync/otp.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  final TextEditingController phone_nos=TextEditingController();
  final TextEditingController country_code=TextEditingController();
  static String verify="";
  void sendOTP() async
  {
    
    await FirebaseAuth.instance.verifyPhoneNumber(
  phoneNumber: country_code.text+phone_nos.text,
  verificationCompleted: (PhoneAuthCredential credential) {
    Navigator.push(context, MaterialPageRoute(builder:(context) => BottomAppBar(),));
  },
  verificationFailed: (FirebaseAuthException e) {print(e);},
  codeSent: (String verificationId, int? resendToken) {
     
     Navigator.push(context, MaterialPageRoute(builder:(context) => Otp(vkey: verificationId),));
     
  },
  codeAutoRetrievalTimeout: (String verificationId) {},
  
);
  
  }
  @override
  void initState() {
   
    country_code.text="+91";
    super.initState();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(left:25,right: 25),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/title-1.png'),
                Text("Phone Verification",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 10,
                ),
                Text('We need to verify your Phone Number to get started',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.deepPurple),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 55,
                  child: Row(
                    children: [
                      SizedBox(
                        child: TextFormField(
                          decoration:InputDecoration(border: InputBorder.none) ,
                          controller: country_code,
                        ),
                        width: 40,
                      ),
                      Text("|",style: TextStyle(fontSize: 33,color: Colors.grey),),
                      SizedBox(width: 20,),
                      
                      Expanded(
                        child: TextFormField(decoration:InputDecoration(border: InputBorder.none,hintText:"Phone Number",) ,
                        controller: phone_nos,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Builder(
                  builder: (context) {
                    return SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(onPressed: sendOTP, child: Text("Send the Code"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    
                      ),
                      ),
                    );
                  }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}