import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  // Form fields
  String fullName = '';
  String dob = '';
  String hospital = '';
  String medicalRecordNumber = '';
  String bloodType = '';
  String rhFactor = '';
  String transfusionReason = '';
  String specialRequirements = '';
  String crossmatchResult = '';
  String donorPreferences = '';
  String allergies = '';
  String physicianName = '';
  String contactNumber = '';

  TextEditingController _dobController = TextEditingController();

  // Function to show date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        _dobController.text = picked.toLocal().toString().split(' ')[0]; // Display only the date part
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Request Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Name'),
                onChanged: (value) {
                  setState(() {
                    fullName = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter full name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _dobController,
                decoration: InputDecoration(
                  labelText: 'Date of Birth',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      _selectDate(context);
                    },
                  ),
                ),
                readOnly: true,
                onTap: () {
                  _selectDate(context);
                },
                validator: (value) {
                  // Add date validation if needed
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Medical Record Number'),
                onChanged: (value) {
                  setState(() {
                    medicalRecordNumber = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Blood Type'),
                onChanged: (value) {
                  setState(() {
                    bloodType = value;
                  });
                },
              ),

              TextFormField(
                decoration: InputDecoration(labelText: 'Reason for Transfusion'),
                onChanged: (value) {
                  setState(() {
                    transfusionReason = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Special Requirements'),
                onChanged: (value) {
                  setState(() {
                    specialRequirements = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Crossmatch Result'),
                onChanged: (value) {
                  setState(() {
                    crossmatchResult = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Donor Preferences'),
                onChanged: (value) {
                  setState(() {
                    donorPreferences = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Allergies'),
                onChanged: (value) {
                  setState(() {
                    allergies = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Physician Name'),
                onChanged: (value) {
                  setState(() {
                    physicianName = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contact Number'),
                onChanged: (value) {
                  setState(() {
                    contactNumber = value;
                  });
                },
              ),

              SizedBox(height: 16),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process the form data
                    // You can print or send the data to a server
                    print('Form submitted');
                  }
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
