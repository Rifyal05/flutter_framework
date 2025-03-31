import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _counter = 0;

  int get count => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Provider Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Jumlah klik:'),
              Consumer<Counter>(
                builder: (context, counter, _) => Text(
                  '${counter.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<Counter>(context, listen: false).increment();
                },
                child: const Text('Tambah'),
              ),
            ],
          ),
        ),
      ),

    );

  }
}