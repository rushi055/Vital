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
        _dobController.text = picked
            .toLocal()
            .toString()
            .split(' ')[0]; // Display only the date part
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
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                ),
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
              SizedBox(height: 10.0),
              TextFormField(
                controller: _dobController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    gapPadding: 4,
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
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
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      gapPadding: 4,
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'Medical Record Number'),
                onChanged: (value) {
                  setState(() {
                    medicalRecordNumber = value;
                  });
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      gapPadding: 4,
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'Blood Type'),
                onChanged: (value) {
                  setState(() {
                    bloodType = value;
                  });
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      gapPadding: 4,
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'Reason for Transfusion'),
                onChanged: (value) {
                  setState(() {
                    transfusionReason = value;
                  });
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      gapPadding: 4,
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'Contact Number'),
                onChanged: (value) {
                  setState(() {
                    contactNumber = value;
                  });
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process the form data
                    // You can print or send the data to a server
                    print('Form submitted');
                  }
                },
                child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
