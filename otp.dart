import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  List a =["assets/1.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: RichText(text: TextSpan(children: [
            TextSpan(text: "Welcome To         ",style: TextStyle(fontSize: 40,color: Colors.green)),
            TextSpan(text: "Chitsoft",style: TextStyle(fontSize: 40,color: Colors.green,fontWeight: FontWeight.bold))
          ])),
        ),
        Container(height: 150,width:300,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("1.jpg"),fit: BoxFit.fill),
          ),),
        SizedBox(height:10),
        Text("OTP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Text("We have sent you a verification code to your phone number +91 1231231231",style: TextStyle(fontSize: 18),),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25,left: 25),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Mobile Number",
              suffixIcon: Icon(Icons.send),
              border: OutlineInputBorder()
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right:260),
          child: Text("Enter OTP",style: TextStyle(fontSize: 20),),
        ),
        SizedBox(height:10),
        Padding(
          padding: const EdgeInsets.only(right:10),
          child: Pinput(length: 6,defaultPinTheme: PinTheme(
            height: 50,width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              borderRadius: BorderRadius.circular(10)
            )
          ),),
        ),
        SizedBox(height:10),
        Padding(
          padding: const EdgeInsets.only(left:200),
          child: Text("Resend OTP?",style: TextStyle(fontSize: 20,color: Colors.green),),
        ),
        SizedBox(height:10),
        SizedBox(height: 40,width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {},
            child: Text("Verify", style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
      ],),
    );
  }
}
