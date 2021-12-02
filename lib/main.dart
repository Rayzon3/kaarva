import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kaarva/login.dart';
import 'package:kaarva/provider/google_Sign_In.dart';
import 'package:kaarva/widgets/sign_up_button.dart';
import 'package:provider/provider.dart';
import 'splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.teal,
  //     ),
  //     home: const Splash(),
  //     debugShowCheckedModeBanner: false,
  //   );

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          title: 'Flutter App',
          theme: ThemeData(
            primarySwatch: Colors.teal,
          ),
          home: const SignUpPage(),
          debugShowCheckedModeBanner: false,
        ),
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
