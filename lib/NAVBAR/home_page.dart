import 'package:flutter/material.dart';
import 'package:flutter_framework/API/simpleapitest.dart';
import 'package:flutter_framework/NAVBAR/NAVIGATION_PAGE/halaman_kedua.dart';
import 'package:flutter_framework/NAVBAR/NAVIGATION_PAGE/halaman_utama.dart';
import 'package:flutter_framework/UI/CARD/gridview_dart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [const HalamanUtama(),GridViewDart(),Simpleapitest(), const HalamanKedua()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.icecream_outlined), label: "HOME PAGE"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_ic_call_outlined), label: "STATIC IMG"),
          BottomNavigationBarItem(
              icon: Icon(Icons.adb), label: "PEXELS"),
          BottomNavigationBarItem(
              icon: Icon(Icons.incomplete_circle_sharp), label: "PROFILE")
        ],
      ),
    );
  }
}