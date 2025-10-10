import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _currentSliderVal = 0; // Starting Value of Slider widget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( // This creates the skeleton of app (White page)), //Scaffold
        appBar: AppBar( // The AppBar holding the 911 button & CPR title
          title: const Text('CPR Mock-Up'),
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[ // Creates the button and gives instructions when pressed
            ElevatedButton(
              onPressed: () {
                print('Calling 911...');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('911', style: TextStyle(color: Colors.white70)),
            ),
          ],
        ),
        body: Center( // Centers whatever widget built to the center Body
          child: Slider( // Creates a child of the widget Slider
            value: _currentSliderVal, // Initialize the value
            min: 0, // Slider Number starts at 0
            max: 5, // Max Slider Number ends at 5
            divisions: 5,
            label: _currentSliderVal.round().toString(), // Instead of using double values and cleaner transition of steps
            onChanged: (double value) {
              setState(() {
                _currentSliderVal = value;
              });
            },
          ),
        ),
      ),
    );
  }
}