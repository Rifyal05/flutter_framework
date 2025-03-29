import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pergi ke Halaman Kedua'),
          onPressed: () {
            Navigator.pushNamed(context, '/halamanKedua');
          },
        ),
      ),
    );
  }
}