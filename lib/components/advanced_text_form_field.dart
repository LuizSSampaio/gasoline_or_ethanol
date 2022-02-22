import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdvancedTextFormField extends StatelessWidget {
  AdvancedTextFormField(
      {Key? key, this.iconText, this.iconData, this.hintText, this.labelText})
      : super(key: key);

  String? iconText;
  IconData? iconData;
  String? hintText;
  String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(
        signed: false,
        decimal: true,
      ),
      decoration: InputDecoration(
        prefixIcon: (iconText == null) ? Icon(iconData) : Text(iconText!),
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
