import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
  String _destinationDetails = "";
  String _time = "";
  final _database = FirebaseDatabase.instance.reference();
  final user = FirebaseAuth.instance.currentUser!;

  @override
  void initState() {
    super.initState();
    _activateListeners();
    _timeListener();
    print("i am initState");
  }

  void _activateListeners() {
    //fires when there is any data present or if data is updated
    _database.child("rideDetails/destination/").onValue.listen((event) {
      final String details = event.snapshot.value;
      setState(() {
        _destinationDetails = 'Going To : $details';
        print("set state");
      });
    });
  }

  void _timeListener() {
    _database.child("rideDetails/leavingIn").onValue.listen((event) {
      final String details = event.snapshot.value;
      setState(() {
        _time = 'Leaving In : $details mins';
        print("set state");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ride Details Of",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              user.displayName!,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 6),
            Text(
              _destinationDetails,
              style: TextStyle(fontSize: 18),
            ),
            Text(
              _time,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
