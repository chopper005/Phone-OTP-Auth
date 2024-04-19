import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() {
  runApp(RoutesPage());
}

class RoutesPage extends StatelessWidget {
  const RoutesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBarTextColor = Colors.lightBlue[900]; // Color variable for app bar text
    final backgroundColor = Colors.white; // Color variable for background

    return MaterialApp(
      title: 'Bus Routes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: appBarTextColor,
            fontSize: 25,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bus Routes'),
          backgroundColor: backgroundColor,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop(); // Navigate back to previous screen
            },
          ),
        ),
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  //'images/dypplogo.png',
                  'images/dypt.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 20),
                RouteButtons(
                  routeButtonsData: [
                    RouteButtonData(routeName: 'Asta Route', routeImagePath: 'images/Ashta_route.jpg'),
                    RouteButtonData(routeName: 'Bhogawati Route', routeImagePath: 'images/Bhogawati_route.jpg'),
                    RouteButtonData(routeName: 'Fulewadi Route', routeImagePath: 'images/Fulewadi_route.jpg'),
                    RouteButtonData(routeName: 'Gargoti Route', routeImagePath: 'images/Gargoti_route.jpg'),
                    RouteButtonData(routeName: 'Hupari Route', routeImagePath: 'images/Hupari_route.jpg'),
                    RouteButtonData(routeName: 'Ichalkaranji Route', routeImagePath: 'images/ich.jpg'),
                    RouteButtonData(routeName: 'Kagal Route', routeImagePath: 'images/Kagal_route.jpg'),
                    RouteButtonData(routeName: 'Kalamba Route', routeImagePath: 'images/Kalamba_route.jpg'),
                    RouteButtonData(routeName: 'Kuditre Route', routeImagePath: 'images/kuditre_route.jpg'),
                    RouteButtonData(routeName: 'Sangli Route', routeImagePath: 'images/Sangli_route.jpg'),
                    RouteButtonData(routeName: 'SSC Board Route', routeImagePath: 'images/SSC_route.jpg'),
                    RouteButtonData(routeName: 'Vashinaka Route', routeImagePath: 'images/Vashinaka_route.jpg'),
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
            routeImagePath: routeButtonData.routeImagePath,
          ),
      ],
    );
  }
}

class RouteButton extends StatelessWidget {
  final String routeName;
  final String routeImagePath;

  const RouteButton({required this.routeName, required this.routeImagePath, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(imagePath: routeImagePath),
            ),
          );
        },
        child: Text(
          routeName,
          style: TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue[900]!), // Use the ! operator to handle nullability
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
  final String routeImagePath;

  RouteButtonData({required this.routeName, required this.routeImagePath});
}

class DetailScreen extends StatelessWidget {
  final String imagePath;

  const DetailScreen({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zoomed Image'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back to previous screen
          },
        ),
      ),
      body: Container(
        color: Colors.lightBlue[900]!,
        child: Column(
          children: [
            Expanded(
              child: PhotoView(
                imageProvider: AssetImage(imagePath),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 4,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Navigate back to previous screen
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
