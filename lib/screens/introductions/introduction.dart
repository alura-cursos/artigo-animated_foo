import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({
    super.key,
    required this.imageUrl,
    required this.description,
    required this.functionButton,
    required this.textButton,
  });
  final String imageUrl;
  final String description;
  final String textButton;
  final Function() functionButton;

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  double opacityLevel = 0.0;
  double scale = 0.5;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      setState(() {
        opacityLevel = 1.0;
      });
    });
    Future.delayed(const Duration(microseconds: 100)).whenComplete(() {
      setState(() {
        scale = 1.0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 5),
            curve: Curves.decelerate,
            child: TextButton(
              onPressed: widget.functionButton,
              child: Text(widget.textButton),
            ),
          ),
        ],
      ),
      body: AnimatedScale(
        scale: scale,
        duration: const Duration(seconds: 1),
        curve: Curves.easeIn,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                widget.imageUrl,
                height: 300,
                width: 300,
              ),
              Text(
                widget.description,
                textAlign: TextAlign.center,
                style: EntryDecoration.titleText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

