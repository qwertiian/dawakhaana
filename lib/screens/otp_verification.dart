import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatelessWidget {
  final String phone;
  OTPVerificationScreen({required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verify OTP")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Enter OTP sent to $phone"),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "OTP"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              child: Text("Verify"),
            ),
          ],
        ),
      ),
    );
  }
}
