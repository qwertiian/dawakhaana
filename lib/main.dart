import 'package:flutter/material.dart';
import 'screens/get_started.dart';

void main() {
  runApp(MedicineDeliveryApp());
}

class MedicineDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medicine Delivery App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GetStartedScreen(),
    );
  }
}