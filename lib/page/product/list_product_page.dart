import 'package:flutter/material.dart';

class ListProductPage extends StatelessWidget {
  const ListProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list product'),
      ),
      body: const Center(
        child: Text('list product page'),
      ),
    );
  }
}
