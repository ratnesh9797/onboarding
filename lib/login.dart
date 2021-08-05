import 'package:flutter/material.dart';
import 'package:onboarding_demo/otp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
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
                  "Login to proceed",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text("Unlock all the features by login"),
              Text("into your account"),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: TextField(
                    decoration: InputDecoration(
                  fillColor: Colors.blue,
                  border: OutlineInputBorder(),
                  labelText: 'Enter your mobile number',
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Otp();
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Request OTP",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text("Trouble logging in? Help"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
