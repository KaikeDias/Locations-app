import 'package:flutter/material.dart';
import 'package:local_guide/ui/button_section.dart';
import 'package:local_guide/ui/text_section.dart';
import 'package:local_guide/ui/title_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'assets/images/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          const TitleSection(),
          const ButtonSection(),
          const TextSection(),
        ],
      ),
    );
    ;
  }
}
