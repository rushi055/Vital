import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BloodDonationReceiverPage(),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}

class BloodDonationReceiverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Donation Receiver'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.redAccent, Colors.pinkAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _sectionHeader('Welcome, Blood Receiver!'),
              _paragraph('If you are in need of blood, please follow the steps below:'),
          
              _sectionHeader('1. Contact Blood Bank'),
              _bulletPoint('Call your local blood bank to check for blood availability and schedule a donation appointment.'),
          
              _sectionHeader('2. Provide Information'),
              _bulletPoint('Provide necessary information about the patient, including blood type, medical condition, and other details.'),
              _bulletPoint('Ensure you have a valid identification document for verification purposes.'),
          
              _sectionHeader('3. Await Confirmation'),
              _bulletPoint('Wait for confirmation from the blood bank regarding blood availability and appointment details.'),
              _bulletPoint('Follow any additional instructions provided by the blood bank staff.'),
          
              _sectionHeader('4. Receive Blood'),
              _bulletPoint('Arrive at the blood bank or designated location for the blood transfusion.'),
              _bulletPoint('Ensure the medical staff verifies your identity and provides necessary pre-transfusion information.'),
          
              _sectionHeader('Note'),
              _paragraph('The blood donation process is crucial for saving lives. If you have any concerns or questions, feel free to communicate with the blood bank staff for guidance.'),
          
              SizedBox(height: 20),
              _paragraph('We wish you a smooth recovery!'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  Widget _bulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 35, child: Icon(Icons.bloodtype, color: Colors.white)),
          Expanded(child: Text(text, style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }

  Widget _paragraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
