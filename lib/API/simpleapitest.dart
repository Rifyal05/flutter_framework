import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// API IMAGE : API DARI PEXELS

class Simpleapitest extends StatefulWidget {
  Simpleapitest({super.key});

  @override
  _SimpleapitestState createState() => _SimpleapitestState();
}

class _SimpleapitestState extends State<Simpleapitest> {
  List<String> imageUrls = [];
  bool isLoading = false;
  String searchQuery = '';
  final String pexelsApiKey = 'Pexels Api Key here';

  Future<void> fetchImages() async {
    setState(() {
      isLoading = true;
      imageUrls.clear();
    });

    final url = Uri.parse('https://api.pexels.com/v1/search?query=$searchQuery&per_page=20');
    final response = await http.get(
      url,
      headers: {
        'Authorization': pexelsApiKey,
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final photos = data['photos'] as List;
      imageUrls = photos.map((photo) => photo['src']['medium'].toString()).toList();
    } else {
      print('Gagal mengambil gambar: ${response.statusCode}');
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    searchQuery = 'nature';
    fetchImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 70),
          const Text(
            "HALAMAN GAMBAR",
            style: TextStyle(fontSize: 20),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            height: 80,
            width: 420,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari...',
                hintStyle: const TextStyle(color: Colors.grey),
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.black54,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
              ),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                  fetchImages();
                });
              },
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: fetchImages,
              child: isLoading
                  ? Center(child: CircularProgressIndicator())
                  : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6.5,
                  mainAxisSpacing: 6.5,
                ),
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}