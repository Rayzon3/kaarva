import 'package:flutter/material.dart';
import 'package:kaarva/main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const MyHomePage(
                  title: "Kaarva",
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff243443),
        body: Center(
            child: Container(
                child: Text(
          "Kaarva.",
          style: GoogleFonts.inter(
              fontSize: 50,
              textStyle: const TextStyle(
                  color: Color(0xff2DF6AE), fontWeight: FontWeight.bold)),
        ))));
  }
}
