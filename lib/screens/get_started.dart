import 'package:flutter/material.dart';
import 'sign_up.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              _buildSlide("Fast Delivery", "Get your medicines in minutes"),
              _buildSlide("Trusted Vendors", "Only verified pharmacies"),
              _buildSlide("Easy Payments", "Multiple payment options available"),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text("Get Started"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSlide(String title, String subtitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.local_pharmacy, size: 100, color: Colors.blue),
        SizedBox(height: 20),
        Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(subtitle, style: TextStyle(fontSize: 16, color: Colors.grey)),
      ],
    );
  }
}
