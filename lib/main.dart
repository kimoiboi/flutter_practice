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
  double _currentSliderVal = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CPR Mock-Up'),
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                print('Calling 911...');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('911', style: TextStyle(color: Colors.white70)),
            ),
          ],
        ),
        body: Center(
          child: Slider(
            value: _currentSliderVal,
            min: 0,
            max: 5,
            divisions: 5,
            label: _currentSliderVal.round().toString(),
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