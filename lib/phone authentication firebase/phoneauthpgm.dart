import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'Phoneauthhomepage.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp(phoneAuthFire());
}

class phoneAuthFire extends StatefulWidget {

  @override
  State<phoneAuthFire> createState() => _phoneAuthFireState();
}

class _phoneAuthFireState extends State<phoneAuthFire> {


  final TextEditingController phonenocontroller=TextEditingController();
  final TextEditingController otpController=TextEditingController();

  String mobileNumber='';

  FirebaseAuth auth=FirebaseAuth.instance;

  var otpFieldVisibility = false;
  var receviedId = "";




  void verifyUserPhoneNo() {
    auth.verifyPhoneNumber(
        phoneNumber: mobileNumber,
        verificationCompleted: (PhoneAuthCredential credential) async{
          await auth.signInWithCredential(credential).then((value) async{
            if(value.user !=null){
              Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(builder: (context)=> HomePhone()),
                      (route) => false);
            }
          });
        },

        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verificationId,int? resendToken){
          receviedId= verificationId;
          otpFieldVisibility=true;
          setState(() {});
        },
        codeAutoRetrievalTimeout: (String verificationId){});

  }


  Future<void> verifyOTPCode() async {
    PhoneAuthCredential credential= PhoneAuthProvider.credential(
      verificationId: receviedId,
      smsCode: otpController.text,
    );
    await auth
        .signInWithCredential(credential)
        .then((value) async{
      if(value.user !=null){
        Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(builder: (context) => HomePhone()), (route) => false);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,

     home: Scaffold(
      appBar: AppBar(title: Text("OTP Verification"),),

      body: Column(
        children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: IntlPhoneField(
           controller: phonenocontroller,
           initialCountryCode: 'NG',
           decoration: InputDecoration(
             hintText: "Phone Number",
             labelText: "Phone",
             border: OutlineInputBorder(),
           ),
           onChanged: (val){
             mobileNumber=val.completeNumber;
           },
         ),
       ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Visibility(
               visible: otpFieldVisibility,
               child: TextField(
                  controller: otpController,
                  decoration: InputDecoration(
                    hintText: "OTP Code",
                    labelText: "OTP",
                    border: OutlineInputBorder(),
                  ),
                ),
             ),
           ),

          ElevatedButton(onPressed: (){
            if(otpFieldVisibility){
              verifyOTPCode();
            }else{
              verifyUserPhoneNo();
            }
            FocusManager.instance.primaryFocus?.unfocus();
          },
              child: Text(
                otpFieldVisibility? "Login" : "Verify"
              ))
        ],
      ),
    ),
    );
  }

}
