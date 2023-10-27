import 'package:flutter/material.dart' show BuildContext, Checkbox, Colors, Column, ElevatedButton, FontStyle, FontWeight, InputDecoration, Key, Row, Scaffold, SingleChildScrollView, SizedBox, StatelessWidget, Text, TextField, TextStyle, Widget;

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Add the 'Fashions' text
            const Text(
              'Fashions',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black, // Text color is black
                fontFamily: 'Times New Roman',
              ),
            ),
            // Add 'My Life My Style' text
            const Text(
              'My Life My Style',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Text color is black
                fontFamily: 'Times New Roman',
              ),
            ),
            const SizedBox(height: 20),
            // Add 'Sign Up' text
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Text color is black
                fontFamily: 'Times New Roman',
              ),
            ),
            const SizedBox(height: 20),
            // Add a text field for the username
            const TextField(
              decoration: InputDecoration(
                labelText: 'User Name',
                labelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Text color is black
                  fontFamily: 'Times New Roman',
                ),
              ),
            ),
            // Add a text field for email
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Text color is black
                  fontFamily: 'Times New Roman',
                ),
              ),
            ),
            // Add a text field for password
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Text color is black
                  fontFamily: 'Times New Roman',
                ),
              ),
              obscureText: true, // Hide the password
            ),
            // Add a text field for confirming the password
            const TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                labelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Text color is black
                  fontFamily: 'Times New Roman',
                ),
              ),
              obscureText: true, // Hide the password
            ),
            const SizedBox(height: 10),
            // Add a checkbox for terms and conditions
            Row(
              children: <Widget>[
                Checkbox(
                  value: false, // Initial value of the checkbox
                  onChanged: (bool? value) {
                    // Handle checkbox state
                  },
                ),
                const Text(
                  "By creating an account you have to agree with our terms & conditions.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Text color is black
                    fontFamily: 'Times New Roman',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Add the 'Sign Up' button
            ElevatedButton(
              onPressed: () {
                // Handle sign-up logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Button color is black
              ),
              child: const Text(
                'Sign Up',
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
