import 'package:flutter/material.dart';

//for the image to be in top position
Widget buildTop() {
  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      buildCoverImage(),
      Positioned(
        top: 200,
        child: buildProfileImage(),
      ),
    ],
  );
}

//background Spiderman Image
Widget buildCoverImage() => Image.asset(
      'assets/spider.jpeg',
      width: double.infinity,
      height: 280,
      fit: BoxFit.cover,
    );

// My Photo Image
Widget buildProfileImage() => const Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
      child: CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage('assets/tanmay.jpeg'),
      ),
    );

// the Bio
Widget buildContent() {
  return const Padding(
    padding: EdgeInsets.fromLTRB(30, 0, 15, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tanmay Nayak',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 10), // Spacing between the elements
        Text(
          'App Developer',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 10), // Spacing between the elements
        Text(
          '''On journey to be consistent and disciplined in life so I have no regrets 
Running | Programming | Self Improvement''',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          softWrap: false,
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    ),
  );
}