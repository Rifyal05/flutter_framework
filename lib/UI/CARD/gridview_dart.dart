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
    'https://img.wattpad.com/82239f209d638a8c47525d140144e40917bae8bb/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f55372d576f5a42766d4e476b75413d3d2d3132372e313635376639366635363865346633393435343530303232303734342e6a7067?s=fit&w=720&h=720',
    'https://i.pinimg.com/736x/d8/9c/e3/d89ce3f05a70c52c76974fb0d2aa5fb6.jpg',
    'https://i.pinimg.com/736x/69/28/50/692850c00f93f250caea161cdde50657.jpg',
    'https://i.pinimg.com/736x/b9/04/56/b90456bec8c7dacfdb15d22ddce9a5fb.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR4uWJEzb8tuT3-49nRnYzdqH0lpx3aZfeWw&s',
    'https://img.freepik.com/premium-photo/cute-anime-girl-kawai_941097-16202.jpg',
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
        ],
      ),
    );
  }
}
