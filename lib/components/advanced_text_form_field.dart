import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdvancedTextFormField extends StatelessWidget {
  const AdvancedTextFormField(
      {Key? key, this.icon, this.hintText, this.labelText})
      : super(key: key);

  final Widget? icon;
  final String? hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(
        signed: false,
        decimal: true,
      ),
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintText,
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9,]')),
      ],
      validator: (value) {
        return (value == null || value.isEmpty) ? 'Digite um valor' : null;
      },
    );
  }
}
