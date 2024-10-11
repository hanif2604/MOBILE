import 'package:extroverse/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future initSplash() async {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  void initState() {
    initSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "WELCOME BACK!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Center(
            child: Text("To Our Company"),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Center(
            child: Image.asset(
              "assets/images/logo.jpeg",
              height: 80, // Adjust this value to make the image smaller
            ),
          ),
        ],
      ),
    );
  }
}
