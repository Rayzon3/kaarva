import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kaarva/home.dart';
import 'package:kaarva/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

// // ignore: camel_case_types
class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff243443),
      body: signUp(context),
    );
  }
}

Widget signUp(BuildContext context) {
  return Column(
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

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({Key? key}) : super(key: key);

//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: signUp(context),
//     );
//   }
// }

// Widget signUp(BuildContext context) {
//   return Column(
//     children: [
//       Center(
//         child: ElevatedButton.icon(
//             onPressed: () {
//               // Navigator.push(
//               //     context, MaterialPageRoute(builder: (_) => const homePage()));
//               final provider =
//                   Provider.of<GoogleSignInProvider>(context, listen: false);
//               provider.googleLogin();
//             },
//             icon: const FaIcon(
//               FontAwesomeIcons.google,
//               color: Colors.red,
//             ),
//             label: const Text(
//               "Login with Google",
//               style: TextStyle(fontSize: 16),
//             ),
//             style: ElevatedButton.styleFrom(
//                 primary: Colors.white,
//                 onPrimary: const Color(0xff243443),
//                 fixedSize: const Size(240, 80))),
//       )
//     ],
//   );
// }
