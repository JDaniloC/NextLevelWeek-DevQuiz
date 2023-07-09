import 'package:flutter/material.dart';
import 'package:flutter_devquiz/challenge/widges/answer/answer_widget.dart';
import 'package:flutter_devquiz/core/app_text_styles.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(title, style: AppTextStyles.heading),
        const SizedBox(
          height: 24,
        ),
        const AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente",
            isRight: true,
            isSelected: true),
        const AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente",
            isRight: false,
            isSelected: true),
        const AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente",
            isRight: false,
            isSelected: false),
        const AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente",
            isRight: true,
            isSelected: false),
      ],
    ));
  }
}
