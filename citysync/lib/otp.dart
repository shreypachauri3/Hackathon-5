import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Otp extends StatefulWidget {
  String vkey;
   Otp({super.key,required this.vkey});
 
  @override
  State<Otp> createState() => OtpState(vkey:vkey);
}

class OtpState extends State<Otp> {
  FirebaseAuth auth = FirebaseAuth.instance;
  String vkey="";
  OtpState({required this.vkey});
  String otpcode="";
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
    borderRadius: BorderRadius.circular(20),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: Color.fromRGBO(234, 239, 243, 1),
  ),
);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {},
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left:25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/title-1.png'),
              Text("Verify Phone Number",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                height: 10,
              ),
              Text('We need to verify your Phone Number to get started',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
              
              SizedBox(height: 20),
              Pinput(
                onChanged: (value) {otpcode=value;},
                androidSmsAutofillMethod:  AndroidSmsAutofillMethod.smsUserConsentApi,

length: 6,
  submittedPinTheme: submittedPinTheme,
  
  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
  showCursor: true,
  onCompleted: (pin) => print(pin),
),
SizedBox(
  height: 25,
),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(onPressed: () async{
                  
    // Create a PhoneAuthCredential with the code
    try{
    PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: vkey, smsCode: otpcode);

    // Sign the user in (or link) with the credential
    FirebaseAuth.instance.currentUser?.updatePhoneNumber(credential);
    //Navigator.pushNamed(context, "/homepage");
    }
    catch(e)
    {
      Alert(
      context: context,
      type: AlertType.error,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      buttons: [
        DialogButton(
          child: Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();


    }
    
    }
    
    , child: Text("Verify Phone Number"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              
                ),
                ),
              ),
             Row(
              children: [
                TextButton(onPressed: () {Navigator.pop(context);}, child: Text("Edit Phone Number"))
              ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
