import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AboutUsContent();
  }
}

class AboutUsContent extends StatelessWidget {
  final String videoUrl = 'https://youtu.be/xNcESq-gyK8?si=jvgSBQh9bdqw57pF';

  @override
  Widget build(BuildContext context) {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);

    return Scaffold(
      appBar: AppBar(
        title: Text('About DYP Polytechnic',style: TextStyle(color: Colors.white), // Updated
        ),
        // Updated

        backgroundColor: Colors.lightBlue[900], // Set app bar background color
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (videoId != null)
              YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: videoId,
                  flags: YoutubePlayerFlags(
                    autoPlay: true,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blue,
                progressColors: ProgressBarColors(
                  playedColor: Colors.blue,
                  handleColor: Colors.blueAccent,
                ),
              ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  _buildHeader('Why Choose DYP Polytechnic?'),
                  SizedBox(height: 8),
                  Text(
                    'DYP Polytechnic offers state-of-the-art facilities, experienced faculty, and a conducive learning environment to nurture the skills and talents of its students.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 24),
                  _buildHeader('Vision'),
                  SizedBox(height: 8),
                  Text(
                    'To be a center of excellence in technical education, producing skilled professionals capable of meeting global challenges.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 24),
                  _buildHeader('Mission'),
                  SizedBox(height: 8),
                  Text(
                    'Our mission is to provide quality education through innovative teaching methods, industry-oriented curriculum, and holistic development of students.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 24),
                  _buildHeader('Objectives'),
                  SizedBox(height: 8),
                  Text(
                    '1. To impart technical education of the highest standards.\n'
                        '2. To foster research and innovation.\n'
                        '3. To collaborate with industry for practical exposure.\n'
                        '4. To promote entrepreneurship among students.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 32),
                  _buildPersonSection(
                      'Founder', 'images/DY_Dada.png', 'Padmashree Dr. D. Y. Patil', 'Founder and Visionary Leader of DYP Group'),
                  _buildPersonSection(
                      'President', 'images/sanjay.png', "Hon\'ble Dr. Sanjay D. Patil", 'President of DYP Group'),
                  _buildPersonSection('Vice President', 'images/Satej_Patil.png', 'Hon\'ble Mr. Satej D. Patil', 'Vice President of DYP Group'),
                  _buildPersonSection('Trustee', 'images/RP.png', 'Hon\'ble Shri. Ruturaj S. Patil', 'Trustee of DYP Group'),

                  _buildPersonSection('Trustee', 'images/Pruthvi.png', 'Hon\'ble Shri. Pruthviraj S. Patil', 'Trustee of DYP Group'),
                  _buildPersonSection('Trustee', 'images/Tejas_Patil.png', 'Hon\'ble Shri. Tejas S. Patil', 'Trustee of DYP Group'),
                  _buildPersonSection('Executive Director', 'images/AKG.png', 'Dr. A. K. Gupta',
                      'Executive Director of DYP Group'),
                  _buildPersonSection('Principal', 'images/MMNarake.png', 'Dr. M.M. Narake', 'Principal of DYP Polytechnic'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(String text) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      color: Colors.lightBlue[900], // Set background color
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildPersonSection(String title, String imagePath, String name, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(title),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Align contents to the top
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[800],
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16), // Add space between text and CircleAvatar
                CircleAvatar(
                  radius: 60, // Increased size
                  child: ClipOval(
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover, // Use BoxFit.cover for the image to fill the circle
                      width: 120, // Set the same width as the text column
                      height: 120, // Set the same height as the width to maintain aspect ratio
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
