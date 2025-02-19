import 'package:flutter/material.dart';
import 'otp_verification.dart';
//import 'package:google_sign_in/google_sign_in.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  /*
  Future<void> _signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      print("User signed in: ${googleUser.email}");
    }
  }
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Full Name"),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: "Mobile Number"),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OTPVerificationScreen(phone: phoneController.text)),
                );
              },
              child: Text("Sign Up"),
            ),
            /*
            TextButton(
              onPressed: _signInWithGoogle,
              child: Text("Sign Up with Google"),
            ),
             */
          ],
        ),
      ),
    );
  }
}
