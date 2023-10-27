// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:firstproject/forgetscreen.dart';
import 'package:firstproject/homescreen.dart';
import 'package:firstproject/signupscreen.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key});

  onLoginPressed(BuildContext context, TextEditingController memail, TextEditingController password) {
    String email = memail.text;
    if (email.contains("@") && email.contains(".com")) {
      print("Correct Email");
      print("Email: ${email}");
      print("Password: ${password.text}");
    } else {
      print("Incorrect Email");
    }
    memail.text = "";
    password.text = "";
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext context) => const HomeView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Brand Name
            const Text(
              'Fashions',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const Text(
              'My Life My Style',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              "Please login or signup to continue our app",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Times New Roman',
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Login",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            const SizedBox(height: 50),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                suffixIcon: IconButton(
                  icon: Icon(Icons.check), // You can change this to your desired icon
                  onPressed: () {
                    // Add your logic when the tick mark button is pressed for the email field
                  },
                ),
                border: OutlineInputBorder(),
                hintText: "Email Address",
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(Icons.check), // You can change this to your desired icon
                  onPressed: () {
                    // Add your logic when the tick mark button is pressed for the password field
                  },
                ),
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const ForgetView()));
              },
              child: Container(
                alignment: Alignment.topRight,
                child: const Text("Forget Password?"),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  onLoginPressed(context, emailController, passwordController);
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.black,  // Change button color to black
                  foregroundColor: Colors.white,  // Change text color to white
                ),
                child: const Text("Login"),
              ),
            ),
            const SizedBox(
              height: 20,  // Add spacing between the Login button and the new buttons
            ),
            // New Buttons
            const Text(
              "OR",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement Facebook login logic here
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.blue,  // Change button color to blue
                foregroundColor: Colors.white,  // Change text color to white
              ),
              child: const Text("Continue with Facebook"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement Google login logic here
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.white,  // Change button color to white
                foregroundColor: Colors.black,  // Change text color to black
              ),
              child: const Text("Continue with Google"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement Apple login logic here
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.white,  // Change button color to white
                foregroundColor: Colors.black,  // Change text color to black
              ),
              child: const Text("Continue with Apple"),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const SignupView()));
              },
              child: const Text("Don't have an account? Signup"),
            ),
          ],
        ),
      ),
    );
  }
}
