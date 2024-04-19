import 'package:flutter/material.dart';
import 'sub_buttons_page.dart';

class DocumentsPage extends StatelessWidget {
  static const routeName = '/documents';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Documents',
          style: TextStyle(color: Colors.lightBlue[900]),
        ),
        elevation: 0.0, // Remove elevation from app bar
        titleSpacing: 10.0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 120.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(0.0, -25.0),
                child: Image.asset(
                  'images/dypt.png',
                  width: 250.0,
                  height: 250.0,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              RoundedButton(
                buttonText: '  Domicile Certificate  ',
                imagePath: 'images/dom.jpeg',
                headerText: 'Domicile Certificate Header',
              ),
              SizedBox(height: 20),
              RoundedButton(
                buttonText: 'Nationality Certificate',
                imagePath: 'images/dom.jpeg',
                headerText: 'Nationality Certificate Header',
              ),
              SizedBox(height: 20),
              RoundedButton(
                buttonText: '   Income Certificate   ',
                imagePath: 'images/income.jpeg',
                headerText: 'Income Certificate Header',
              ),
              SizedBox(height: 20),
              RoundedButton(
                buttonText: '      SSC Certificate      ',
                imagePath: 'images/tenth.jpeg',
                headerText: 'New Certificate Header',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String buttonText;
  final String imagePath;
  final String headerText;

  const RoundedButton({
    required this.buttonText,
    required this.imagePath,
    required this.headerText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Set background color to transparent
        elevation: MaterialStateProperty.all<double>(0.0), // Remove elevation
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.transparent;
            }
            return null;
          },
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SubButton(
          buttonText: buttonText,
          imagePath: imagePath,
          headerText: headerText,
          textColor: Colors.black, // Set text color to black
        ),
      ),
    );
  }
}

