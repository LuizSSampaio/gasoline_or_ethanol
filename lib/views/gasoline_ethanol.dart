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
            ),
            Form(
              key: _gasolineAndEthanolFormKey,
              child: Column(
                children: const [
                  AdvancedTextFormField(),
                  SizedBox(
                    height: 20.0,
                  ),
                  AdvancedTextFormField(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
