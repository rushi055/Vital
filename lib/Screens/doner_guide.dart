import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BloodDonationDonerPage(),
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
    );
  }
}

class BloodDonationDonerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Donation Guidelines'),
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
        child: ListView(
          children: [
            _sectionHeader('Blood Donation Eligibility Guidelines'),
            _bulletPoint('Must be between 18 and 65 years old.'),
            _bulletPoint('Weight must be at least 110 pounds (50 kg).'),
            _bulletPoint('In good health on the day of donation.'),
            // Add more bullet points for other eligibility guidelines...

            _sectionHeader('Who Cannot Donate Blood'),
            _bulletPoint('Individuals with certain chronic illnesses or diseases.'),
            _bulletPoint('Donors who have undergone major surgery recently.'),
            _bulletPoint('Individuals with HIV, hepatitis, syphilis, or other infectious diseases.'),
            // Add more bullet points for who cannot donate...

            _sectionHeader('Guidelines for a Smooth Check-In Process'),
            _bulletPoint('Bring a valid ID (driver\'s license or passport).'),
            _bulletPoint('Eat a nutritious meal before donation.'),
            _bulletPoint('Drink plenty of water before and after donation.'),
            _bulletPoint('Wear clothing with sleeves that can be easily rolled up.'),
            // Add more bullet points for the check-in process...

            _sectionHeader('Note'),
            _paragraph('These guidelines may vary based on the policies of the blood donation center or regional health regulations. Always check with the specific blood donation organization for their latest guidelines and requirements.'),
          ],
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
