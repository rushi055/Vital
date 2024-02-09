import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Donation App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/6.jpg'), // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DonorCard(),
              SizedBox(height: 16.0), // Add some space between cards
              ReceiverCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class DonorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Donor',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Find information about becoming a blood donor.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                // Add navigation or other actions for the donor card
              },
              child: Text('Learn More'),
            ),
          ],
        ),
      ),
    );
  }
}

class ReceiverCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Receiver',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Request blood donation for those in need.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                // Add navigation or other actions for the receiver card
              },
              child: Text('Request Blood'),
            ),
          ],
        ),
      ),
    );
  }
}
