import 'package:flutter/material.dart';
import 'package:onboarding_demo/Onboarding.dart';
import 'package:onboarding_demo/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});

    SharedPreferences perf = await SharedPreferences.getInstance();
    String? onboarding = perf.getString('onboarding');
    print("onboardinge done splash: $onboarding");

    if (onboarding == 'true') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoardingPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Image(
            image: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/en/thumb/9/91/NCERT_300px.svg/1024px-NCERT_300px.svg.png"),
          ),
        ),
      ),
      backgroundColor: Colors.indigo,
    );
  }
}
