import 'package:flutter/material.dart';


class ContainerDart extends StatelessWidget {
  const ContainerDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text("Container Dart"),
    ),
body: Center(
  child: Container(
        width: 450,
        height: 700,
        color: Colors.red,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(8.0),
        child: const Text('Container'),
      )
),
    );
  }
}
