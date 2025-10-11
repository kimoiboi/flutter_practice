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

  //Added String labels to the slider
  final List<String> _sliderLabels = [
    'Step 1',
    'Step 2',
    'Step 3',
    'Step 4',
    'Step 5',
  ];

  //Added a path to the images
  final List<String> _imageLists = [
    'assets/images/Step_1.png',
    'assets/images/Step_2.png',
    'assets/images/Step_3.png',
    'assets/images/Step_4.png',
    'assets/images/Step_5.png'
  ];

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
        body: Center( //Centering widget
          child: Stack( //Created a stack widget that will correspond to the
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset(
                _imageLists[_currentSliderVal.round()],
                fit: BoxFit.cover,
              ),

              Slider(
                value: _currentSliderVal,
                min: 0,
                max: 4,
                divisions: 4,
                label: _sliderLabels[_currentSliderVal.round()],
                onChanged: (double value) {
                  setState(() {
                    _currentSliderVal = value;
                  });
                },
              )
            ]
          )
        )
      ),
    );
  }
}