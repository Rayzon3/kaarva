import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kaarva/login.dart';
import 'package:kaarva/provider/google_Sign_In.dart';
import 'package:provider/provider.dart';
import 'splash.dart';

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

  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          title: 'Flutter App',
          theme: ThemeData(
            primarySwatch: Colors.teal,
          ),
          home: const Splash(),
          debugShowCheckedModeBanner: false,
        ),
      );
}
