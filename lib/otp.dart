import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image(
                    image: NetworkImage(
                        "https://wealthelite.in/website/dist/img/employee-login-img.webp")),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Verify your number",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text("We have sent the verification code"),
              Text("to your mobile number"),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: OtpTextField(
                  numberOfFields: 4,
                  borderColor: Colors.yellow,
                  focusedBorderColor: Color(0xFF4A148C),
                  fieldWidth: 55,
                  filled: true,
                  fillColor: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  margin: EdgeInsets.only(right: 16.0),
                  showFieldAsBox: true,
                  textStyle: theme.textTheme.subtitle1,
                  onCodeChanged: (String value) {},
                  onSubmit: (String verificationCode) {
                    //navigate to different screen code goes here
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      },
                    );
                  }, // end onSubmit
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "Verify OTP",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text("I didn't recieve a code! Send again"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
