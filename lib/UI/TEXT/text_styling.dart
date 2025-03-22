import 'package:flutter/material.dart';

class TextStyling extends StatelessWidget {
  const TextStyling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Halo Universe !',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Halo Dunia!'),
            const Icon(Icons.star),
            ElevatedButton(
              onPressed: () {},
              child: Text('Tombol'),
            ),
            const Text(
              'Selamat datang di halaman baru!',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent),
            ),
            const Text(
              'Hello anak beruntung!!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.amberAccent,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'Testing Moree',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.cyanAccent,
              ),
            ),
            const Text(
              'Jarak Antar Kata',
              style: TextStyle(
                wordSpacing: 5.0,
              ),
            ), // Tambahkan koma di sini
            const Text(
              'Teks Miring',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ), // Tambahkan koma di sini
            const Text('Testing Next'), // Tambahkan koma di sini
            const Text(
              'Jarak Huruf',
              style: TextStyle(
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan aksi ketika tombol ditekan di sini
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}