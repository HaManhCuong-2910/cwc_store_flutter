import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: (RouteSettings settings) {
      switch (settings.name) {
        case '/':
          return CupertinoPageRoute(
              builder: (_) => const HomePage(), settings: settings);
        case '/details':
          return CupertinoPageRoute(
              builder: (_) => const SecondPage(), settings: settings);
        default:
          return CupertinoPageRoute(
              builder: (_) => const HomePage(), settings: settings);
      }
    },
    title: 'Navigation Basics',
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Home page 123',
              style: TextStyle(fontSize: 30.0),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/details');
                  },
                  child: const Text('dsadas')),
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('app bar second'),
      ),
      body: const Center(
        child: Text('second page'),
      ),
    );
  }
}
