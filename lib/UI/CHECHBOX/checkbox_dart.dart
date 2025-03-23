import 'package:flutter/material.dart';

class CheckboxDart extends StatefulWidget {
  const CheckboxDart({super.key});

  @override
  _ContohCheckboxState createState() => _ContohCheckboxState();
}

class _ContohCheckboxState extends State<CheckboxDart> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Checkbox'),
      ),
      body: Center(
        child: Checkbox(
          value: isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              isChecked = newValue!;
            });
          },
        ),
      ),
    );
  }
}