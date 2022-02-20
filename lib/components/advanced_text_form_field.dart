import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdvancedTextFormField extends StatelessWidget {
  const AdvancedTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(
        signed: false,
        decimal: true,
      ),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
      ],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Digite algum texto.';
        }
        return null;
      },
    );
  }
}