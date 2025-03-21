import 'package:flutter/material.dart';
import 'package:flutter_framework/UI/BUTTON/dart_button.dart';
import 'package:flutter_framework/UI/TEXT/text_styling.dart';
import 'package:flutter_framework/UI/IMAGE/display_image.dart';

import 'UI/INPUT/text_filed_dart.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TextFieldDart()
    );
  }
}

