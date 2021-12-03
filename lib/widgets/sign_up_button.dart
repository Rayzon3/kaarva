import 'package:flutter/material.dart';
import 'package:kaarva/provider/google_Sign_In.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff243443),
      body: signUp(context),
    );
  }
}

Widget signUp(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: ElevatedButton.icon(
            onPressed: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (_) => const homePage()));
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.googleLogin();
            },
            icon: const FaIcon(
              FontAwesomeIcons.google,
              color: Colors.red,
            ),
            label: const Text(
              "Login with Google",
              style: TextStyle(fontSize: 16),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: const Color(0xff243443),
                fixedSize: const Size(240, 80))),
      )
    ],
  );
}
