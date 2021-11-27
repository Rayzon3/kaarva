import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentIndex = 0;

  final pages = [
    Scaffold(
      backgroundColor: const Color(0xff243443),
      appBar: AppBar(
        title: Text("Page to create ride"),
      ),
      body: Center(
        child: Text(
          " Yo ",
          style: TextStyle(color: Color(0xff2DF6AE)),
        ),
      ),
    ),
    Scaffold(
      backgroundColor: const Color(0xff243443),
      appBar: AppBar(
        title: Text("Page to find ride"),
      ),
      body: Center(
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
        selectedItemColor: Color(0xff2DF6AE),
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
