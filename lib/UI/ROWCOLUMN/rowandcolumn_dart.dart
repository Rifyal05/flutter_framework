import 'package:flutter/material.dart';


class RowandcolumnDart extends StatelessWidget {
  const RowandcolumnDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row And Column Dart"),
      ),
      body: const Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text("Ini adalah widget column"),
                SizedBox(height: 30,),
                Icon(Icons.import_contacts_outlined),
                SizedBox(height: 10,),
                Text("Teks diantara icon"),
                SizedBox(height: 10,),
                Icon(Icons.import_contacts_outlined),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Column(
                  children: const <Widget>[
                    Text("Ini adalah contoh Row", style:TextStyle(
                      fontSize: 18,
                      color: Colors.blue
                    ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.import_contacts_outlined),
                        SizedBox(width: 5,),
                        Text("Ini adalah Teks diantara icon"),
                        SizedBox(width: 5,),
                        Icon(Icons.import_contacts_outlined),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
