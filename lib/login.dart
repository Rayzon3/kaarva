import 'package:flutter/material.dart';
import 'package:kaarva/home.dart';

// ignore: camel_case_types
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff243443),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const homePage()));
          },
          child: const Text("Login with Google"),
          style: ElevatedButton.styleFrom(
              primary: const Color(0xff2DF6AE),
              onPrimary: const Color(0xff243443)),
        ),
      ),
    );
  }
}
