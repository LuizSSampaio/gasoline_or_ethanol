import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gasoline_or_ethanol/components/advanced_card.dart';
import 'package:gasoline_or_ethanol/views/gasoline_ethanol_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gasolina ou Etanol'),
      ),
      body: AdvancedCard(
        icon: FontAwesomeIcons.calculator,
        title: 'Calcular gasolina x etanol',
        subtitle:
            'Descubra qual combustível vale mais a pena colocar em seu carro.',
        onPressed: () {
          Navigator.pushNamed(context, GasolineOrEthanolPage.routeName);
        },
      ),
    );
  }
}
