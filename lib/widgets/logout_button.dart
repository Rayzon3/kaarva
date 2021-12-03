import 'package:flutter/material.dart';
import 'package:kaarva/provider/google_Sign_In.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget logoutButton(BuildContext context) {
  return TextButton(
      onPressed: () {
        final provider =
            Provider.of<GoogleSignInProvider>(context, listen: false);
        provider.logout();
      },
      child: Text(
        "Logout",
        style: TextStyle(color: Colors.black),
      ));
}
