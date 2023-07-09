import 'package:flutter/material.dart';
import 'package:flutter_devquiz/core/core.dart';

import '../../../shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  const QuestionIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Questão 04", style: AppTextStyles.body),
          Text("de 10", style: AppTextStyles.body)
        ]),
        const SizedBox(height: 16),
        const ProgressIndicatorWidget(value: 0.7)
      ]),
    );
  }
}
