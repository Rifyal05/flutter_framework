import 'package:flutter/material.dart';

class Rowcolumn extends StatelessWidget {
  const Rowcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout : Container + Row + Column'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.red,
                      // padding: const EdgeInsets.only(right: 10),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.blue,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.deepPurpleAccent,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.brown,
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.pink,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
