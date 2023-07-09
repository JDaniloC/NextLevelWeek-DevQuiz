import 'package:flutter/material.dart';
import 'package:flutter_devquiz/challenge/widges/question_indicator/question_indicator_widget.dart';
import 'package:flutter_devquiz/challenge/widges/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({super.key});

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(top: true, child: QuestionIndicatorWidget()),
        ),
        body: QuizWidget(title: "O que o Flutter faz em sua totalidade?"));
  }
}
