import 'package:flutter/material.dart';

class AdvancedCard extends StatelessWidget {
  const AdvancedCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Expanded(
        child: Card(
          margin: const EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 0.0),
          child: ListTile(
            leading: Icon(icon),
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        ),
      ),
    );
  }
}
