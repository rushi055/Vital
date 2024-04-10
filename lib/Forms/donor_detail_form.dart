import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Donation App',
      home: DonorDetailsPage(),
    );
  }
}

class DonorDetailsPage extends StatefulWidget {
  @override
  _DonorDetailsPageState createState() => _DonorDetailsPageState();
}

class _DonorDetailsPageState extends State<DonorDetailsPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController bloodGroupController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController medicalConditionsController = TextEditingController();
  final TextEditingController donationHistoryController = TextEditingController();
  final TextEditingController emergencyContactController = TextEditingController();
  final TextEditingController preferredTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donor Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: bloodGroupController,
                decoration: InputDecoration(labelText: 'Blood Group'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your blood group';
                  }
                  return null;

                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: phoneNumberController,
                decoration: InputDecoration(labelText: 'Phone Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: locationController,
                decoration: InputDecoration(labelText: 'Location'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your location';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: medicalConditionsController,
                decoration: InputDecoration(labelText: 'Existing Medical Conditions'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: donationHistoryController,
                decoration: InputDecoration(labelText: 'Donation History'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: emergencyContactController,
                decoration: InputDecoration(labelText: 'Emergency Contact'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: preferredTimeController,
                decoration: InputDecoration(labelText: 'Preferred Time for Donation'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // if (_formKey.currentState?.validate() ?? false) {
                  //   // Perform actions with the entered details
                  //   // After saving, you can navigate to another page or perform other actions
                  //   // For now, let's print the values to the console
                  //   print('Blood Group: ${bloodGroupController.text}');
                  //   print('Phone Number: ${phoneNumberController.text}');
                  //   print('Location: ${locationController.text}');
                  //   print('Existing Medical Conditions: ${medicalConditionsController.text}');
                  //   print('Donation History: ${donationHistoryController.text}');
                  //   print('Emergency Contact: ${emergencyContactController.text}');
                  //   print('Preferred Time for Donation: ${preferredTimeController.text}');
                  // }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
