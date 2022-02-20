import 'package:flutter/material.dart';
import 'package:gasoline_or_ethanol/views/cars.dart';
import 'package:gasoline_or_ethanol/views/gasoline_ethanol.dart';

import 'views/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Gasolina ou Etanol',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/cars': (context) => const CarsPage(),
        '/gasolineOrEthanol': (context) => const GasolineOrEthanolPage(),
      },
    ),
  );
}
