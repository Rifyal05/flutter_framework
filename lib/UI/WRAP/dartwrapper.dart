import 'package:flutter/material.dart';

class DartWrapper extends StatefulWidget {
  const DartWrapper({super.key});

  @override
  State<DartWrapper> createState() => _DartWrapState();
}

class _DartWrapState extends State<DartWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap Di Dart')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: <Widget>[
            imageBorder(
                'https://i.pinimg.com/736x/e5/d9/c4/e5d9c4f708cf2990506801a2c21ef7c2.jpg',
                138.0,
                138.0),
            imageBorder(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCxaVJACuPwyLVgw26tllF4WHSloZZ1s2mQ&s',
                138.0,
                138.0),
            imageBorder(
                'https://i.pinimg.com/736x/bb/09/96/bb0996c0cb2da35ce8d9ea399b8792dc.jpg',
                138.0,
                138.0),
          ],
        ),
      ),
    );
  }

  Widget imageBorder(String imageUrl, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}