import 'package:flutter/material.dart';

import 'introduction.dart';
import 'introduction_page_2.dart';

class IntroductionPage1 extends StatelessWidget {
  const IntroductionPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionPage(
      imageUrl: './assets/images/dark_logo.png',
      description:
          'Explore Hyrule como nunca antes com nossa aplicação exclusiva, reunindo todas as informações essenciais em um compêndio interativo.',
      functionButton: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const IntroductionPage2(),
          ),
        );
      },
      textButton: 'Próximo',
    );
  }
}

