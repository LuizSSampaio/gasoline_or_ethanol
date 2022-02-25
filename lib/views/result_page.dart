import 'package:flutter/material.dart';
import 'package:gasoline_or_ethanol/global_variables.dart';

class ResultArguments {
  final double gasolinePrice;
  final double ethanolPrice;

  ResultArguments(this.gasolinePrice, this.ethanolPrice);
}

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  static const String routeName = '/result';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ResultArguments;
    gasolineOrEthanol fuel = (args.ethanolPrice / args.gasolinePrice > 0.7)
        ? gasolineOrEthanol.gasoline
        : gasolineOrEthanol.ethanol;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Resultado',
              style: kTitleStyle,
            ),
          ),
          const Text(
            'O combustível que está mais em conta é: ',
            style: kDescriptionStyle,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: (fuel == gasolineOrEthanol.gasoline)
                  ? Colors.green
                  : Colors.red,
              child: ListTile(
                title: Text(
                  (fuel == gasolineOrEthanol.gasoline) ? 'Gasolina' : 'Etanol',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
