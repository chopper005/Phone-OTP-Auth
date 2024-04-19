/*
import 'package:flutter/material.dart';
import 'BusRoutesScreen.dart';

class RoutesPage extends StatelessWidget {
  const RoutesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle back button press here
        // You can navigate to the previous screen or handle it in any way you want
        return true; // Return true to allow back navigation, false otherwise
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bus Routes'),
          backgroundColor: Colors.lightBlue[900],
          centerTitle: true,
        ),
        backgroundColor: Colors.lightBlue[900],
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/dypplogo.png', // Provide the path to your image
                  width: 200, // Adjust the width as needed
                  height: 200, // Adjust the height as needed
                ),
                SizedBox(height: 20), // Add space between image and buttons
                RouteButtons(
                  routeButtonsData: [
                    RouteButtonData(routeName: 'Asta', routeId: 1),
                    RouteButtonData(routeName: 'Bhogawati', routeId: 2),
                    RouteButtonData(routeName: 'Fulewadi', routeId: 3),
                    RouteButtonData(routeName: 'Gargoti', routeId: 4),
                    RouteButtonData(routeName: 'Hupari', routeId: 5),
                    RouteButtonData(routeName: 'Ichalkaranji', routeId: 6),
                  ],
                ),
                RouteButtons(
                  routeButtonsData: [
                    RouteButtonData(routeName: 'Kagal', routeId: 7),
                    RouteButtonData(routeName: 'Kalamba', routeId: 8),
                    RouteButtonData(routeName: 'Kuditre', routeId: 9),
                    RouteButtonData(routeName: 'Sangli', routeId: 10),
                    RouteButtonData(routeName: 'SSC Board', routeId: 11),
                    RouteButtonData(routeName: 'Vashinaka', routeId: 12),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RouteButtons extends StatelessWidget {
  final List<RouteButtonData> routeButtonsData;

  const RouteButtons({required this.routeButtonsData, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (var routeButtonData in routeButtonsData)
          RouteButton(
            routeName: routeButtonData.routeName,
            routeId: routeButtonData.routeId,
          ),
      ],
    );
  }
}

class RouteButton extends StatelessWidget {
  final String routeName;
  final int routeId;

  const RouteButton({required this.routeName, required this.routeId, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/busRoutes',
            arguments: routeId,
          );
        },
        child: Text(
          routeName,
          style: TextStyle(color: Colors.blue),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}

class RouteButtonData {
  final String routeName;
  final int routeId;

  RouteButtonData({required this.routeName, required this.routeId});
}  */
