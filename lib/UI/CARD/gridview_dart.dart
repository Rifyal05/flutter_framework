import 'package:flutter/material.dart';

class GridViewDart extends StatefulWidget {
  GridViewDart({super.key});

  @override
  _GridViewDartState createState() => _GridViewDartState();
}

class _GridViewDartState extends State<GridViewDart> {
  final List<String> imageUrls = [
    'https://i.pinimg.com/736x/e5/d9/c4/e5d9c4f708cf2990506801a2c21ef7c2.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCxaVJACuPwyLVgw26tllF4WHSloZZ1s2mQ&s',
    'https://i.pinimg.com/736x/bb/09/96/bb0996c0cb2da35ce8d9ea399b8792dc.jpg',
    'https://files.idyllic.app/files/static/2379695?width=256&optimizer=image',
    'https://i.pinimg.com/736x/e5/d9/c4/e5d9c4f708cf2990506801a2c21ef7c2.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCxaVJACuPwyLVgw26tllF4WHSloZZ1s2mQ&s',
    'https://i.pinimg.com/736x/bb/09/96/bb0996c0cb2da35ce8d9ea399b8792dc.jpg',
    'https://files.idyllic.app/files/static/2379695?width=256&optimizer=image',
  ];

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
              onChanged: (value) {},
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
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
        ],
      ),
    );
  }
}
