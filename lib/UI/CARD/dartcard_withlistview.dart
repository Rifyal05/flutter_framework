import 'package:flutter/material.dart';

class DartcardWithlistview extends StatelessWidget {
  const DartcardWithlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("INI HALAMAN CARD"),
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, rowIndex) {
          return const Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 20)),
              SizedBox(
                height: 200,
                width: 200,
                child: Card(
                  elevation: 8.0,
                  margin: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "CARD 1",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "ini adalah kartu di dart",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Card(
                  elevation: 8.0,
                  margin: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Card 2",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Ini adalah kartu ke 2 di program dart"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
