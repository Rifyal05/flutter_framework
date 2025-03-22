import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DartButton extends StatefulWidget {
  const DartButton({super.key});

  @override
  State<DartButton> createState() => _DartButtonState();
}

class _DartButtonState extends State<DartButton> {
  String dropdownValue = 'Satu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tombol'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton ditekan!');
              },
              child: const Text('ElevatedButton'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                print('TextButton ditekan!');
              },
              child: const Text('TextButton'),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton ditekan!');
              },
              child: const Text('OutlinedButton'),
            ),
            const SizedBox(height: 16),
            IconButton(
              onPressed: () {
                print('IconButton ditekan!');
              },

              icon: const Icon(Icons.account_balance_sharp),
            ),
            const SizedBox(height: 16),
            FloatingActionButton(
              onPressed: () {
                print('FloatingActionButton ditekan!');
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 16),
            DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Satu', 'Dua', 'Tiga', 'Empat']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            PopupMenuButton<String>(
              onSelected: (String result) {
                print('Opsi yang dipilih: $result');
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Satu',
                  child: Text('Satu'),
                ),
                const PopupMenuItem<String>(
                  value: 'Dua',
                  child: Text('Dua'),
                ),
                const PopupMenuItem<String>(
                  value: 'Tiga',
                  child: Text('Tiga'),
                ),
              ],
            ),
            OverflowBar(
                // alignment: MainAxisAlignment.center,
                // overflowAlignment: OverflowBarAlignment.end,
                // overflowDirection: VerticalDirection.down,
                spacing: 10,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Tombol 1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Tombol 2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Tombol 3'),
                ),
                // ElevatedButton(onPressed: () {}, child: Text('Tombol 1')),
                // ElevatedButton(onPressed: () {}, child: Text('Tombol 2')),
                // ElevatedButton(onPressed: () {}, child: Text('Tombol 3')),
              ],
            )
          ],
        ),
      ),
    );
  }
}