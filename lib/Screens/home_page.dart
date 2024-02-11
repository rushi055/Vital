import 'package:flutter/material.dart';
import 'package:rushikesh/Screens/pdf.dart';
import 'package:rushikesh/cards/doner_card.dart';
import 'package:rushikesh/Screens/doner_guide.dart';
import 'package:rushikesh/Forms/preregistration.dart';
import 'package:rushikesh/cards/receiver_card.dart';
import 'package:rushikesh/Screens/receiver_page.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_pdfview/flutter_pdfview.dart';

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

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  late File _image = File('assets/7.jpg');

  String _profileName = "Rushikesh Chaudhari"; // Initial profile name

  Future<void> _pickImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _image = File(''); // Initial empty image
  }

  // void _openPDF() {
  //   String pdfPath = "assets/hospital.pdf";
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => PdfViewerPage(pdfPath: pdfPath),
  //     ),
  //   );
  // }

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
                color: Colors.redAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _pickImageFromGallery,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: _image != null && _image.path.isNotEmpty
                          ? FileImage(_image) as ImageProvider<Object>
                          : AssetImage('assets/7.jpg'),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    _profileName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Pre-Registration'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PreRegistrationForm()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.people_alt_outlined),
              title: Text('Donors Info'),
              onTap: () {
                // Navigate to the information for donors page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BloodDonationDonerPage()),
                ); // Close the drawer
                // Add navigation or other actions
              },
            ),
            ListTile(
              leading: Icon(Icons.people_alt),
              title: Text('Receivers Info'),
              onTap: () {
                // Navigate to the information for receivers page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BloodDonationReceiverPage()),
                ); // Close the drawer
                // Add navigation or other actions
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text('Blood Bank Centers'),
              onTap: () {
                // _openPDF();
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
            Container(color: Color(0xEE1F27)),
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
                        image: AssetImage('assets/10.jpg'),
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
// class PdfViewerPage extends StatelessWidget {
//    String pdfPath;
//
//   PdfViewerPage({required this.pdfPath});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Blood Bank Centers'),
//       ),
//       body: PDFView(
//         filePath: pdfPath,
//
//       ),
//     );
//   }
// }