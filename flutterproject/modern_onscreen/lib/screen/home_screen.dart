import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Makes the stack take up the entire screen
        children: [
          // Background image
          Image.asset(
            'assets/images/Frog4.jpg',
            fit: BoxFit.cover, // Makes the image cover the entire area
          ),
          // Foreground content
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Now I know exactly where you are',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white), // Change text color for visibility
                ),
                SizedBox(height: 20),
                // Additional content can go here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
