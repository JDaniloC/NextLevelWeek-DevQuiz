import 'package:flutter/material.dart';
import 'package:flutter_devquiz/core/app_colors.dart';
import 'package:flutter_devquiz/core/app_images.dart';
import 'package:flutter_devquiz/core/app_text_styles.dart';

import '../../../shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          border:
              const Border.fromBorderSide(BorderSide(color: AppColors.border)),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: Image.asset(AppImages.blocks),
          ),
          const SizedBox(height: 20),
          Text("Gerenciamento de estado", style: AppTextStyles.heading15),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  flex: 1, child: Text("3/10", style: AppTextStyles.body11)),
              const Expanded(
                flex: 4,
                child: ProgressIndicatorWidget(value: 0.3),
              )
            ],
          )
        ],
      ),
    );
  }
}
