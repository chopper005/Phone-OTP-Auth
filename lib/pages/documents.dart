import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'documents_page.dart';


class DocumentsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set app bar background color to white
        title: Text(
          'Admission',
          style: TextStyle(color: Colors.lightBlue[900]), // Set app bar text color
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
      ),
      backgroundColor: Colors.lightBlue[900], // Set background color for the Scaffold
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(
              12.0, 2.0, 12.0, 120.0), // Adjust padding as needed
          decoration: BoxDecoration(
            color: Colors.lightBlue[900],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  'images/dypp-removebg-preview.png',
                  height: 250.0,
                  width: 250.0,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // Circular shape
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(Size(250, 50)), // Adjust button size here
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DocumentsPage(),
                    ),
                  );
                },
                child: Text('Documents for Admission'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Admission',
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.lightBlue[900],
    ),
    home: DocumentsScreen(),
  ));
}
