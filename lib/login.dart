import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:kaarva/home.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff243443),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => homePage()));
          },
          child: Text("Login with Google"),
          style: ElevatedButton.styleFrom(
              primary: Color(0xff2DF6AE), onPrimary: Color(0xff243443)),
        ),
      ),
    );
  }
}
