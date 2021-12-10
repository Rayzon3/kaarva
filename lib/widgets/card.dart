import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
  String _destinationDetails = "Going to: ";
  final _database = FirebaseDatabase.instance.reference();

  void inistate() {
    super.initState();
    _activateListeners();
  }

  void _activateListeners() {
    //fires when there is any data present or if data is updated
    _database.child("rideDetails/destination").onValue.listen((event) {
      final String details = event.snapshot.value;
      setState(() {
        _destinationDetails = 'Going to - $details';
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
              "Ride Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(_destinationDetails),
          ],
        ),
      ),
    );
  }
}
