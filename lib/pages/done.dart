
import 'about_us.dart';
import 'documents_page.dart';
import 'impdates.dart';
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
//import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'contactpage.dart';
import 'student.dart';
import 'college.dart';
import 'placement.dart';
import 'impdates.dart';
import 'documents.dart';
import 'bus_routes.dart';

class Done extends StatelessWidget {
  const Done({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
      routes: Dashboard.routes,
    );
  }
}

class Dashboard extends StatelessWidget {
  var height, width;
  static final routes = {
    '/contact': (context) => ContactPage(),
    '/student': (context) => Student(),
    '/college': (context) => college(),
    '/placement': (context) => Placement(),
    '/impdates': (context) => importantDates(),
    '/documents': (context) => DocumentsPage(),
    '/bus_routes': (context) => RoutesPage(),
    '/about_us': (context) => AboutUsPage(),

  };
  List imgData = [
    "images/notices.png",
    "images/admission.png",
    "images/student.png",
    "images/placement.png",
    "images/college.png",
    "images/buss.png",
    "images/contact.png",// Add image for Example 1
    "images/about.png", // Add image for Example 2
  ];

  List titles = [
    "IMPORTANT DATES",
    "ADMISSION",
    "FEES & SCHOLARSHIPS",
    "PLACEMENT",
    "CAMPUS LIFE",
    "BUS ROUTES",
    "CONTACT",// New title for Example 1
    "ABOUT US", // New title for Example 2
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.lightBlue[900],
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.26,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/dyppb.png',
                    height: 200,
                    width: 280,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: width,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    mainAxisSpacing: 25,
                  ),
                  itemCount: imgData.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        if (titles[index] == "CONTACT") {
                          Navigator.pushNamed(context, '/contact');
                        } else if (titles[index] == "FEES & SCHOLARSHIPS") {
                          Navigator.pushNamed(context, '/student');
                        } else if (titles[index] == "CAMPUS LIFE") {
                          Navigator.pushNamed(context, '/college');
                        } else if (titles[index] == "PLACEMENT") {
                          Navigator.pushNamed(context, '/placement');
                        }
                        else if (titles[index] == "IMPORTANT DATES") {
                          Navigator.pushNamed(context, '/impdates');
                        }
                        else if (titles[index] == "ADMISSION") {
                          Navigator.pushNamed(context, '/documents');
                        }
                        else if (titles[index] == "BUS ROUTES") {
                          Navigator.pushNamed(context, '/bus_routes');
                        }
                        else if (titles[index] == "ABOUT US") {
                          Navigator.pushNamed(context, '/about_us');
                        }

                        // Add navigation for Example 1 and Example 2
                      },
                      child: Container(
                        margin: EdgeInsets.all(8), // Adjust margin here
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              imgData[index],
                              width: 100,
                              height: 100, // Adjust image height
                            ),
                            Text(
                              titles[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
