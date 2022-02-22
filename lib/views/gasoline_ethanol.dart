import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/advanced_text_form_field.dart';

class GasolineOrEthanolPage extends StatefulWidget {
  const GasolineOrEthanolPage({Key? key}) : super(key: key);

  @override
  State<GasolineOrEthanolPage> createState() => _GasolineOrEthanolPageState();
}

class _GasolineOrEthanolPageState extends State<GasolineOrEthanolPage> {
  final _gasolineAndEthanolFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcular gasolina x etanol'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.calculator,
              size: 55.0,
            ),
            const Text('Calcular etanol x gasolina'),
            const Text(
              'Entre com os valores abaixo e pressione calcular para ver qual combustível está compensando mais.',
              textAlign: TextAlign.center,
            ),
            Form(
              key: _gasolineAndEthanolFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AdvancedTextFormField(
                      iconData: FontAwesomeIcons.dollarSign,
                      hintText: 'Ex: 7,988',
                      labelText: 'Gasolina',
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AdvancedTextFormField(
                      iconData: FontAwesomeIcons.dollarSign,
                      hintText: 'Ex: 5,534',
                      labelText: 'Etanol',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_gasolineAndEthanolFormKey.currentState!.validate()) {

                        }
                      },
                      child: const Text(
                        'Calcular',
                        style: TextStyle(
                          fontSize: 20.0,

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
