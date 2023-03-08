import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ColumnButton(text: 'CALL', color: color, icon: Icons.call),
        ColumnButton(text: 'ROUTE', color: color, icon: Icons.near_me),
        ColumnButton(text: 'SHARE', color: color, icon: Icons.share),
      ],
    );
  }
}

class ColumnButton extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;

  const ColumnButton({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
