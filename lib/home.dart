import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff243443),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(0xff2DF6AE),
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.book_online),
              label: "Home",
              backgroundColor: Color(0xff243443)),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_taxi),
              label: "Car",
              backgroundColor: Color(0xff243443))
        ],
      ),
    );
  }
}
