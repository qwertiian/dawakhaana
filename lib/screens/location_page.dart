/*
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'survey_page.dart';

class LocationPage extends StatelessWidget {
  Future<void> _getLocation(BuildContext context) async {
    //bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Location services are disabled.')),
      );
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Location permissions are denied.')),
        );
        return;
      }
    }

    Position position = await Geolocator.getCurrentPosition();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SurveyPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Location Access')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _getLocation(context),
          child: Text('Allow Location Access'),
        ),
      ),
    );
  }
}
 */