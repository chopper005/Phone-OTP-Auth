/*
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class BusRoutesScreen extends StatelessWidget {
  const BusRoutesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int routeId =
    ModalRoute.of(context)!.settings.arguments as int; // Extract routeId
    String imagePath = '';

    switch (routeId) {
      case 1:
        imagePath = 'images/Ashta_route.jpg';
        break;
      case 2:
        imagePath = 'images/Bhogawati_route.jpg';
        break;
      case 3:
        imagePath = 'images/Fulewadi_route.jpg';
        break;
      case 4:
        imagePath = 'images/Gargoti_route.jpg';
        break;
      case 5:
        imagePath = 'images/Hupari_route.jpg';
        break;
      case 6:
        imagePath = 'images/ich.jpg';
        break;
      case 7:
        imagePath = 'images/Kagal_route.jpg';
        break;
      case 8:
        imagePath = 'images/Kalamba_route.jpg';
        break;
      case 9:
        imagePath = 'images/kuditre_route.jpg';
        break;
      case 10:
        imagePath = 'images/Sangli_route.jpg';
        break;
      case 11:
        imagePath = 'images/SSC_route.jpg';
        break;
      case 12:
        imagePath = 'images/Vashinaka_route.jpg';
        break;
      default:
        imagePath = 'images/default.png'; // Default image path if no match
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus Routes'),
        backgroundColor: Colors.lightBlue[900],
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _navigateToImageDetail(context, imagePath); // Call the method
          },
          child: Hero(
            tag: imagePath,
            child: Image.asset(
              imagePath,
              width: 600, // Set the width to make the image bigger horizontally
              height: 600, // Set the height to make the image bigger vertically
              fit: BoxFit.contain, // Ensure the image fits within the container
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToImageDetail(BuildContext context, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(imagePath: imagePath),
      ),
    );
  }
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
            Navigator.of(context).pop(); // Navigate back to the previous screen
          },
        ),
      ),
      body: Container(
        color: Colors.white, // Set white background color
        child: Center(
          child: PhotoView(
            imageProvider: AssetImage(imagePath),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 4,
          ),
        ),
      ),
    );
  }
}
  */