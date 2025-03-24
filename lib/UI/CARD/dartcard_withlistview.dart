import 'package:flutter/material.dart';

class DartcardWithlistview extends StatefulWidget {
  DartcardWithlistview({super.key});

  @override
  _DartcardWithlistviewState createState() => _DartcardWithlistviewState();
}

class _DartcardWithlistviewState extends State<DartcardWithlistview> {
  String _searchText = '';

  final List<String> imageUrls = [
    'https://i.pinimg.com/736x/e5/d9/c4/e5d9c4f708cf2990506801a2c21ef7c2.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCxaVJACuPwyLVgw26tllF4WHSloZZ1s2mQ&s',
    'https://i.pinimg.com/736x/bb/09/96/bb0996c0cb2da35ce8d9ea399b8792dc.jpg',
    'https://files.idyllic.app/files/static/2379695?width=256&optimizer=image',
  ];
  final List<String> nameImage = [
    'Image 1',
    'Image 2',
    'Image 3',
    'Image 4',
  ];
  final List<String> description = [
    'Seorang Gadis dari Ras Foxian ',
    'Seorang Gadis dari Ras Manusia',
    'Seorang Gadis dari Ras Iblis',
    'Seorang Gadis dari Ras Manusia',
  ];

  List<int> _getFilteredIndices() {
    if (_searchText.isEmpty) {
      return List.generate(nameImage.length, (index) => index);
    } else {
      List<int> filteredIndices = [];
      for (int i = 0; i < nameImage.length; i++) {
        if (nameImage[i].toLowerCase().contains(_searchText.toLowerCase())) {
          filteredIndices.add(i);
        }
      }
      return filteredIndices;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<int> filteredIndices = _getFilteredIndices();

    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 60),
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
                  _searchText = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredIndices.length,
              itemBuilder: (context, index) {
                int rowIndex = filteredIndices[index];
                return Column(
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    SizedBox(
                      height: 360,
                      width: 360,
                      child: Card(
                        color: Colors.black38,
                        elevation: 16.0,
                        margin: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: <Widget>[
                              Text(
                                nameImage[rowIndex],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Image.network(
                                imageUrls[rowIndex],
                                height: 200,
                                width: 250,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                description[rowIndex],
                                style: const TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
