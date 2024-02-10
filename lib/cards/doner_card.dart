import 'package:flutter/material.dart';

import '../Forms/donor_detail_form.dart';

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
                      MaterialPageRoute(
                          builder: (context) => DonorDetailsPage()),
                    );
                  },
                  child: Text('Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

