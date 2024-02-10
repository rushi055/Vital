import 'package:flutter/material.dart';
import 'package:rushikesh/doner_guide.dart';
import 'package:rushikesh/donor_detail_form.dart';
import 'package:rushikesh/preregistration.dart';
import 'package:rushikesh/receiver_page.dart';

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
      appBar: AppBar(
        title: Text('Blood Donation App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Blood Donation App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
            ListTile(
              title: Text('Pre-Registration'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PreRegistrationForm()),
                );
              },
            ),
            ListTile(
              title: Text('Donors Info'),
              onTap: () {
                // Navigate to the information for donors page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BloodDonationDonerPage()),
                );// Close the drawer
                // Add navigation or other actions
              },
            ),
            ListTile(
              title: Text('Receivers Info'),
              onTap: () {
                // Navigate to the information for receivers page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BloodDonationReceiverPage()),
                );// Close the drawer
                // Add navigation or other actions
              },
            ),
            ListTile(
              title: Text('Blood Bank Centers'),
              onTap: () {
                // Navigate to the nearest blood bank center page
                Navigator.pop(context); // Close the drawer
                // Add navigation or other actions
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/6.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              color: Color(0xEE1F27)
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DonorCard(),
                  SizedBox(height: 1.0),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/8.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.0),
                  ReceiverCard(),
                ],
              ),
            ),
          ],
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
            Center(
              child: Text(
                'Donor',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Find information about who can become a blood donor.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DonorDetailsPage()),
                    );
                  },
                  child: Text('Apply'),
                ),
                // SizedBox(
                //   width: 120,
                // ),
                // ElevatedButton(
                //   onPressed: () {
                //     // Add navigation or other actions for the donor card
                //   },
                //   child: Text('Learn More'),
                //),
              ],
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
            Center(
              child: Text(
                'Receiver',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Request blood donation for those in need.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add navigation or other actions for the receiver card
                  },
                  child: Text('Request Blood'),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
