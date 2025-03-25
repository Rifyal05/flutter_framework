import 'package:flutter/material.dart';

class ExpandedRow extends StatelessWidget {
  const ExpandedRow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Expanded Row')),
        body: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green[100],
                child: const Center(child: Text('Expanded 002')),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow[100],
                child: const Center(child: Text('Expanded 001')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}