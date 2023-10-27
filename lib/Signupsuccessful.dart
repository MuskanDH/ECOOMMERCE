import 'package:flutter/material.dart';

class SignUpSuccessScreen extends StatelessWidget {
  const SignUpSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add a green checkmark icon in the middle
            const Icon(
              Icons.check_circle,
              size: 100, // Adjust the size as needed
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            // Add the 'Successful!' text
            const Text(
              'Successful!',
              style: TextStyle(
                fontSize: 16, // 16 font size
                fontWeight: FontWeight.bold,
                color: Colors.black, // Text color is black
                fontFamily: 'Times New Roman',
              ),
            ),
            const SizedBox(height: 10),
            // Add a message text
            Text(
              'You have successfully registered in our app and can start shopping.',
              style: TextStyle(
                fontSize: 13, // 13 font size
                color: Colors.grey[700], // Grayish black color
                fontFamily: 'Times New Roman',
              ),
            ),
            const SizedBox(height: 20),
            // Add the 'Start Shopping' button
            ElevatedButton(
              onPressed: () {
                // Handle button action (e.g., navigate to shopping screen)
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Button color is black
              ),
              child: const Text(
                'Start Shopping',
                style: TextStyle(
                  color: Colors.white, // Button text color is white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
