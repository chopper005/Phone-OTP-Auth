import 'package:flutter/material.dart';

class Student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fees and Scholarships',
          style: TextStyle(color: Colors.lightBlue[900]), // Updated
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.white, // Updated
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                // 'images/dypp-removebg-preview.png',
                'images/dypt.png',
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white, // Updated
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  'Fees Details',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.lightBlue[900], // Updated
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.lightBlue[900], // Updated
                thickness: 2,
                height: 20,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: CategoryButton(
                  category: 'Open Category',
                  fees: 'Fees: Rs. 10,000',
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: CategoryButton(
                  category: 'OBC',
                  fees: 'Fees: Rs. 5,000',
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: CategoryButton(
                  category: 'SC/ST',
                  fees: 'Fees: Rs. 2,000',
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: CategoryButton(
                  category: 'EWS',
                  fees: 'Fees: Rs. 7,000',
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white, // Updated
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Scholarships',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.lightBlue[900], // Updated
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.lightBlue[900], // Updated
                      thickness: 2,
                      height: 20,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: CategoryButton(
                        category: 'Scholarship 1',
                        fees: 'Details: XYZ',
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: CategoryButton(
                        category: 'Scholarship 2',
                        fees: 'Details: ABC',
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: CategoryButton(
                        category: 'Scholarship 3',
                        fees: 'Details: PQR',
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: CategoryButton(
                        category: 'Scholarship 4',
                        fees: 'Details: LMN',
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;
  final String fees;

  const CategoryButton({
    required this.category,
    required this.fees,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('$category: $fees');
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return Colors.lightBlue[900]!;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return Colors.white; // Updated
          },
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide.none,
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          '$category\n$fees',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white, // Updated
          ),
        ),
      ),
    );
  }
}
