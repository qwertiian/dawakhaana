import 'package:flutter/material.dart';
import 'home_page.dart';

class SurveyScreen extends StatefulWidget {
  @override
  _SurveyScreenState createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  List<String> healthConditions = [
    "Diabetes", "Hypertension", "Heart Disease", "Asthma", "None"
  ];
  Set<String> selectedConditions = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Health Survey")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Select any pre-existing conditions:"),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: healthConditions.map((condition) {
                return ChoiceChip(
                  label: Text(condition),
                  selected: selectedConditions.contains(condition),
                  onSelected: (isSelected) {
                    setState(() {
                      isSelected ? selectedConditions.add(condition) : selectedConditions.remove(condition);
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save survey responses (Later: Store in Firebase)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text("Finish & Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
