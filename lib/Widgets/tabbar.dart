// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

launchURL(String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget buildTabBarView() {
  return TabBarView(
    children: [
      // First tab (GridView)
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: 4, // Adjust the number of images you want to display
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (BuildContext context, int index) {
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
      ),

      // Second tab (Info content)
      Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton.icon(
                onPressed: () {},
                label: const Text('He/Him'),
                icon: const Icon(Icons.person_outline_outlined),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text('Mumbai, India'),
                icon: const Icon(Icons.location_on_outlined),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text('nayaktanmayg@gmail.com'),
                icon: const Icon(Icons.mail_outline_outlined),
              ),
              TextButton.icon(
                onPressed: () {
                  const url =
                      'https://www.linkedin.com/in/tanmay-nayak-272532261/';
                  launchURL(url);
                },
                label: const Text('Linkedin'),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
