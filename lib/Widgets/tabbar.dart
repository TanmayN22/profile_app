// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

Widget buildTabBarView() {
  return TabBarView(
    children: [
      // First tab (GridView)
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
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
              'assets/cat.jpeg',
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
      Expanded(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('He/Him'),
                    icon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('Mumbai, India'),
                    icon: const Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 214, 22, 9),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('nayaktanmayg@gmail.com'),
                    icon: const Icon(
                      Icons.mail_outlined,
                      color: Color.fromARGB(255, 210, 21, 8),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 16, 0, 0),
                    child: SocialWidget(
                      placeholderText: 'Tanmay Nayak',
                      iconData: SocialIconsFlutter.linkedin_box,
                      iconColor: const Color.fromARGB(255, 19, 105, 175),
                      iconSize: 22,
                      link:
                          'https://www.linkedin.com/in/tanmay-nayak-272532261',
                      placeholderStyle:
                          const TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 16, 0, 0),
                    child: SocialWidget(
                      placeholderText: 'Tanmay Nayak',
                      iconData: SocialIconsFlutter.github,
                      iconColor: Colors.black,
                      iconSize: 23,
                      link: 'https://github.com/TanmayN22',
                      placeholderStyle:
                          const TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 16, 0, 0),
                    child: SocialWidget(
                      placeholderText: 'cons.tan22',
                      iconData: SocialIconsFlutter.instagram,
                      iconColor: const Color.fromRGBO(200, 5, 6, 5),
                      iconSize: 22,
                      link: 'https://www.instagram.com/cons.tan22/',
                      placeholderStyle:
                          const TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
