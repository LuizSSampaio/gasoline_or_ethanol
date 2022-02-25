import 'package:flutter/material.dart';
import 'package:gasoline_or_ethanol/views/gasoline_ethanol_page.dart';
import 'package:gasoline_or_ethanol/views/result_page.dart';

import 'views/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Gasolina ou Etanol',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        GasolineOrEthanolPage.routeName: (context) => const GasolineOrEthanolPage(),
        ResultPage.routeName: (context) => const ResultPage(),
      },
    ),
  );
}
