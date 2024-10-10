import 'package:flutter/material.dart';

Widget buildTabBarView() {
  return TabBarView(
    children: [
      // First tab (GridView)
      GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: 4, // Adjust the number of images you want to display
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          // List of image paths from your assets
          List<String> images = [
            'assets/cat.jpeg', // Replace with your actual image paths
            'assets/coding.jpg',
            'assets/tanmay1.jpeg',
            'assets/tanmay.jpeg',
          ];

          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  images[index], // Display each image from the list
                  fit: BoxFit.cover, // Makes the image cover the entire card
                ),
              ),
            ),
          );
        },
      ),
      // Second tab (Info content)
      const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.info_outline_rounded, size: 50),
              SizedBox(height: 10),
              Text(
                'This is the info tab. You can place any information here.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
