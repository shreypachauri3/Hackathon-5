import 'package:citysync/HS.dart';
import 'package:citysync/SOS.dart';
import 'package:citysync/SOS/Dashboard/Dashboard.dart';
import 'package:citysync/Screens/views/home.dart';
import 'package:citysync/verify.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pinput/pinput.dart';
import 'firebase_options.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_analytics/firebase_analytics.dart';


void message() async{
  FirebaseMessaging messaging = FirebaseMessaging.instance;

NotificationSettings settings = await messaging.requestPermission(
  alert: true,
  announcement: false,
  badge: true,
  carPlay: false,
  criticalAlert: false,
  provisional: false,
  sound: true,
);

print('User granted permission: ${settings.authorizationStatus}');
}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
 FirebaseMessaging.instance.onTokenRefresh
    .listen((fcmToken) {
      print('Received');
    })
    .onError((err) {
      print('error');
    });
final fcmToken = await FirebaseMessaging.instance.getToken();
print(fcmToken);
  FirebaseAuth.instance
  .userChanges()
  .listen((User? user) {
    if (user == null) {
      runApp(MyApp());
    } else if(user.phoneNumber!=null) {
      runApp(MaterialApp(home: HomePage()));
    }
    else{
      runApp( MaterialApp(home: Register()));
    }
    
    
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: '',
      subTitle: '',
      imageUrl: 'assets/images/title-1.png',
    ),
    Introduction(
      title: 'Healthcare',
      subTitle: 'For scheduling appointments, or just want to learn more about staying healthy.',
      imageUrl: 'assets/images/3.png',
    ),
    Introduction(
      title: 'Education',
      subTitle: 'Helping you stay informed and engaged with the exciting world of education.',
      imageUrl: 'assets/images/4.png',
    ),
    Introduction(
      title: 'Emergency Response',
      subTitle: 'Helps keep you safe in the city, whether you need police, fire, or medical assistance.',
      imageUrl: 'assets/images/5.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: IntroScreenOnboarding(
        backgroudColor: Colors.white,
        introductionList: list,
        onTapSkipButton: () {
          Navigator.push(
            context,
            MaterialPageRoute(
            
              builder: (context) => LoginScreen(),
            ), //MaterialPageRoute
          );
        },
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 

  TextEditingController country_code=TextEditingController();
  TextEditingController phnos=TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
  @override
  void initState() {
     country_code.text="+91";
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left:25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/title-1.png'),
              SizedBox(height: 50,),
              Text("",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                height: 10,
              ),
              
              SizedBox(height: 20,),
              
              SizedBox(height: 20),
             SignInButton(
  Buttons.Google,
  onPressed: signInWithGoogle,
)
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(FirebaseAuth.instance.currentUser?.phoneNumber);
    return MaterialApp(
      home: HomePage(),
    );
  }
}
