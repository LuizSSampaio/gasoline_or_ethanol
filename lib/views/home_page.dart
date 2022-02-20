import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gasoline_or_ethanol/components/advanced_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gasolina ou Etanol'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AdvancedCard(
            icon: FontAwesomeIcons.car,
            title: 'Meus Automóveis',
            subtitle:
                'Adicione seus veículos para poupar tempo na hora de calcular.',
            onPressed: () {
              Navigator.pushNamed(context, '/cars');
            },
          ),
          AdvancedCard(
            icon: FontAwesomeIcons.calculator,
            title: 'Calcular gasolina x etanol',
            subtitle:
                'Descubra qual combustível vale mais a pena colocar em seu carro.',
            onPressed: () {
              Navigator.pushNamed(context, '/gasolineOrEthanol');
            },
          ),
          AdvancedCard(
            icon: FontAwesomeIcons.gasPump,
            title: 'Calcular litros x distância',
            subtitle:
                'Descubra quantos litros são nescessários para andar uma distância escolhida.',
            onPressed: () {},
          ),
          AdvancedCard(
            icon: FontAwesomeIcons.road,
            title: 'Calcular distância x litros',
            subtitle:
                'Descubra o quanto você poderá andar com base no seu tanque.',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

/*
Meus Automóveis
Adicione seus veículos para poupar tempo na hora de calcular.
 */
