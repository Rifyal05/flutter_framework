import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String selectedOption = 'Opsi 1'; // Nilai awal radio button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh Radio Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio<String>(
              value: 'Opsi 1',
              groupValue: selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue!;
                });
              },
            ),
            const Text('Opsi 1'),
            Radio<String>(
              value: 'Opsi 2',
              groupValue: selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue!;
                });
              },
            ),
            const Text('Opsi 2'),
            Radio<String>(
              value: 'Opsi 3',
              groupValue: selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue!;
                });
              },
            ),
            const Text('Opsi 3'),
          ],
        ),
      ),
    );
  }
}