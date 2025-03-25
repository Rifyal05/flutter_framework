import 'package:flutter/material.dart';

class ExpandedDart extends StatelessWidget {
  const ExpandedDart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Expanded 1')),
        body: Column(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.grey[200],
              child: const Center(
                child: Text('Bagian Atas Tetap'),
              ),
            ),
            Text("Text"),
            Expanded(
              child: Container(
                color: Colors.blue[100],
                child: const Center(child: Text('Expanded mengisi sisa ruang')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
