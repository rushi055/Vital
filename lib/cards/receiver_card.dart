import 'package:flutter/material.dart';
import 'package:rushikesh/Forms/receiver_form.dart';

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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyForm()),
                    );
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
