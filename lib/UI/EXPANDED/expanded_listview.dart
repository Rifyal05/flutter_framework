import 'package:flutter/material.dart';

class ExpandedListview extends StatelessWidget {
  const ExpandedListview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Expanded ListView')),
        body: Column(
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.grey[300],
              alignment: Alignment.center,
              child: const Text('Judul ListView'),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const ListTile(title: Text('Item 1')),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const ListTile(title: Text('Item 2')),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const ListTile(title: Text('Item 3')),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const ListTile(title: Text('Item 4')),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const ListTile(title: Text('Item 5')),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const ListTile(title: Text('Item 6')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}