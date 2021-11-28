import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  int currentIndex = 0;

  final pages = [
    //Create Ride Page
    Scaffold(
      backgroundColor: const Color(0xff243443),
      appBar: AppBar(
        title: const Text(
          "Page to create ride",
          style: TextStyle(
            color: Color(0xff243443),
          ),
        ),
        backgroundColor: const Color(0xff2DF6AE),
      ),
      body: const Center(),
    ),
    Scaffold(
      backgroundColor: const Color(0xff243443),
      appBar: AppBar(
        title: const Text(
          "Page to find ride",
          style: TextStyle(
            color: Color(0xff243443),
          ),
        ),
        backgroundColor: const Color(0xff2DF6AE),
      ),
      body: const Center(
        child: Text(
          " Yo YO",
          style: TextStyle(color: Color(0xff2DF6AE)),
        ),
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
