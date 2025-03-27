import 'package:flutter/material.dart';
import 'package:flutter_framework/API/simpleapitest.dart';
import 'package:flutter_framework/UI/BUTTON/dart_button.dart';
import 'package:flutter_framework/UI/CARD/dart_card.dart';
import 'package:flutter_framework/UI/CARD/dartcard_withlistview.dart';
import 'package:flutter_framework/UI/CARD/gridview_dart.dart';
import 'package:flutter_framework/UI/CHECHBOX/checkbox_dart.dart';
import 'package:flutter_framework/UI/CHECHBOX/radio_button.dart';
import 'package:flutter_framework/UI/CHECHBOX/slider_dart.dart';
import 'package:flutter_framework/UI/CONTAINER/container_dart.dart';
import 'package:flutter_framework/UI/EXPANDED/expanded_column.dart';
import 'package:flutter_framework/UI/EXPANDED/expanded_listview.dart';
import 'package:flutter_framework/UI/EXPANDED/expanded_row.dart';
import 'package:flutter_framework/UI/ROWCOLUMN/rowandcolumn_dart.dart';
import 'package:flutter_framework/UI/STACK/dart_stack.dart';
import 'package:flutter_framework/UI/TEXT/text_styling.dart';
import 'package:flutter_framework/UI/IMAGE/display_image.dart';
import 'package:flutter_framework/UI/WRAP/dartwrapper.dart';
import 'UI/INPUT/text_filed_dart.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // title: 'Hello Universe',
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: Simpleapitest()
    );
  }
}

