import 'package:flutter/material.dart';
import 'package:route_example/Media.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  static const routeName = '/home';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'decrement',
            heroTag: 'decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            heroTag: 'increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: (() {
              Navigator.pushNamed(context, Media.routeName);
            }),
            heroTag: 'media',
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
