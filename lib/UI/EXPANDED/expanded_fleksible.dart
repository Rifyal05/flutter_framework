import 'package:flutter/material.dart';

class ExpandedFleksible extends StatelessWidget {
  const ExpandedFleksible({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expanded dan Flexible'),
        ),
        body: SizedBox(
          height: 800,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      child: const Center(child: Text('Flex 2')),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                      height: 100,
                      child: const Center(child: Text('Flex 1')),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(child: Text('Tight')),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 2,
                    child: Container(
                      color: Colors.orange,
                      height: 100,
                      child: const Center(child: Text('Loose')),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Container(
                      height: 500,
                      color: Colors.green,
                      child: const Center(
                        child: Text('Text'),
                      ),
                    )
                  ],
                ),
              ),
              // Expanded(
              //   child: Column(
              //     children: [
              //       SizedBox(height: 20),
              //       Flexible( // Ganti Container dengan Flexible
              //         fit: FlexFit.tight,
              //         child: Container(
              //           color: Colors.green,
              //           child: const Center(
              //             child: Text('Text'),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}