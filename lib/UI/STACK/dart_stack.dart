import 'package:flutter/material.dart';

class DartStack extends StatelessWidget {
  const DartStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini adalah contoh Stack"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children:  <Widget>[
              Container(
                width: 300,
                height: 350,
                color: Colors.green,
              ),
                const Text("INI ADALAH CONTAINER DI DALAM STACK")
              ],
            ),
            ElevatedButton(
                onPressed: () {},
            child: const Text("Tombol"),)
          ],
        ),
      )
    );
  }
}
