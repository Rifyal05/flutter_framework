import 'package:flutter/material.dart';

class SliderDart extends StatefulWidget {
  const SliderDart({super.key});

  @override
  _SliderDartState createState() => _SliderDartState();
}

class _SliderDartState extends State<SliderDart> {
  double _currentValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Nilai: $_currentValue'),
            Slider(
              value: _currentValue,
              min: 0,
              max: 100,
              divisions: 5,
              label: _currentValue.round().toString(),
              onChanged: (double newValue) {
                setState(() {
                  _currentValue = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}