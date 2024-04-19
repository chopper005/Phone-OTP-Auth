import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubButton extends StatelessWidget {
  final String buttonText;
  final String imagePath;
  final String headerText;
  final Color textColor; // New parameter for text color

  SubButton({
    required this.buttonText,
    required this.imagePath,
    required this.headerText,
    required this.textColor, // Initialize the parameter
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlue[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubButtonPage(
              imagePath: imagePath,
              headerText: headerText,
            ),
          ),
        );
      },
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.white), // Set text color here
      ),
    );
  }
}

class SubButtonPage extends StatelessWidget {
  final String imagePath;
  final String headerText;

  SubButtonPage({
    required this.imagePath,
    required this.headerText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Text(
          headerText,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 500,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
