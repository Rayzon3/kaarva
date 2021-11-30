import 'package:flutter/material.dart';
import 'package:kaarva/widgets/card.dart';
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

  final pages = [
    //Create Ride Page
    Scaffold(
        backgroundColor: const Color(0xff243443),
        appBar: AppBar(
          title: const Text(
            "Create a Ride",
            style: TextStyle(
              color: Color(0xff243443),
            ),
          ),
          backgroundColor: const Color(0xff2DF6AE),
        ),
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
              onPressed: null,
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff2DF6AE),
                  fixedSize: const Size(220, 80)),
            )
          ],
        )),
    Scaffold(
      backgroundColor: const Color(0xff243443),
      appBar: AppBar(
        title: const Text(
          "Find a Ride",
          style: TextStyle(
            color: Color(0xff243443),
          ),
        ),
        backgroundColor: const Color(0xff2DF6AE),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          card(),
          card(),
          card(),
          card(),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
