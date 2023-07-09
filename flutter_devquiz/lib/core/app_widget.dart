import 'package:flutter/material.dart';
import 'package:flutter_devquiz/challenge/challenge_page.dart';

import '../home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "DevQuiz",
      home: ChallengePage(),
    );
  }
}
