import 'package:flutter/material.dart';

import '../categories.dart';
import 'introduction.dart';

class IntroductionPage2 extends StatelessWidget {
  const IntroductionPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionPage(
      imageUrl: './assets/images/light_logo.png',
      description:
          'Desvende os mistérios de Hyrule, navegando por mapas detalhados e biografias de personagens em uma experiência imersiva para todos os fãs de The Legend of Zelda.',
      functionButton: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Categories(),
          ),
        );
      },
      textButton: 'Vamos começar',
    );
  }
}
