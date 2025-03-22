import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextFieldDart extends StatelessWidget {
  const TextFieldDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh TextField'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: 'Nama Pengguna',
                hintText: 'Masukkan nama pengguna Anda',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
              obscureText: false,
              onChanged: (text) {
                if (kDebugMode) {
                  print('Teks yang dimasukkan: $text');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}