import 'package:flutter/material.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({Key? key}) : super(key: key);

  static const String routeName = '/cars';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Automóveis'),
      ),
    );
  }
}
