import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:kaarva/widgets/card.dart';
import 'package:kaarva/widgets/logout_button.dart';
import 'package:kaarva/widgets/slider.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  int currentIndex = 0;
  double _currentSliderValue = 0;

  final user = FirebaseAuth.instance.currentUser!;
  static final database = FirebaseDatabase.instance.reference();
  static final userRef = database.child('rideDetails');

  final pages = [
    //Create Ride Page
    Scaffold(
        backgroundColor: const Color(0xff243443),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              "Where are you going?",
              style: TextStyle(
                  color: Color(0xff2DF6AE),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              style: TextStyle(color: Color(0xff243443)),
              decoration: InputDecoration(
                labelText: "Where to?",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 45),
            Text(
              "When are you leaving (in mins)",
              style: TextStyle(
                  color: Color(0xff2DF6AE),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            slider(),
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: () async {
                try {
                  await userRef.set(
                      {'destination': 'sec-21, gurgaon', 'leavingIn': '5'});
                  print('Data written !!');
                } catch (e) {
                  print("Error: $e");
                }
              },
              child: Text(
                "Submit",
                style: TextStyle(color: Color(0xff243443)),
              ),
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff2DF6AE),
                  fixedSize: const Size(80, 60)),
            )
          ],
        )),
    Scaffold(
      backgroundColor: const Color(0xff243443),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [card()],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Kaarva",
            style: TextStyle(color: Color(0xff243443)),
          ),
          backgroundColor: Color(0xff2DF6AE),
          actions: [
            logoutButton(context),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(user.photoURL!),
              ),
            )
          ]),
      backgroundColor: const Color(0xff243443),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: const Color(0xff2DF6AE),
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.book_online),
              label: "Create a ride",
              backgroundColor: Color(0xff243443)),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_taxi),
              label: "Find a ride",
              backgroundColor: Color(0xff243443))
        ],
      ),
    );
  }
}
