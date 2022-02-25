import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gasoline_or_ethanol/views/result_page.dart';

import '../components/advanced_text_form_field.dart';

class GasolineOrEthanolPage extends StatefulWidget {
  const GasolineOrEthanolPage({Key? key}) : super(key: key);

  static const String routeName = '/gasolineOrEthanol';

  @override
  State<GasolineOrEthanolPage> createState() => _GasolineOrEthanolPageState();
}

class _GasolineOrEthanolPageState extends State<GasolineOrEthanolPage> {
  final _gasolineAndEthanolFormKey = GlobalKey<FormState>();
  final TextEditingController gasolineController = TextEditingController();
  final TextEditingController ethanolController = TextEditingController();

  @override
  void dispose() {
    gasolineController.dispose();
    ethanolController.dispose();
    super.dispose();
  }

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
                      controller: gasolineController,
                      icon: const Icon(FontAwesomeIcons.dollarSign),
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
                      controller: ethanolController,
                      icon: const Icon(FontAwesomeIcons.dollarSign),
                      hintText: 'Ex: 5,534',
                      labelText: 'Etanol',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_gasolineAndEthanolFormKey.currentState!
                            .validate()) {
                          Navigator.pushNamed(
                            context,
                            ResultPage.routeName,
                            arguments: ResultArguments(
                              double.parse(
                                gasolineController.text.replaceFirst(
                                  RegExp(','),
                                  '.',
                                ),
                              ),
                              double.parse(
                                ethanolController.text.replaceFirst(
                                  RegExp(','),
                                  '.',
                                ),
                              ),
                            ),
                          );
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
