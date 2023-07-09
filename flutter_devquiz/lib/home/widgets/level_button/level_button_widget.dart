import 'package:flutter/material.dart';
import 'package:flutter_devquiz/core/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;

  LevelButtonWidget({super.key, required this.label})
      : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label));

  final config = {
    "Fácil": {
      "color": AppColors.levelButtonEasy,
      "borderColor": AppColors.levelButtonBorderEasy,
      "fontColor": AppColors.levelButtonTextEasy
    },
    "Médio": {
      "color": AppColors.levelButtonRegular,
      "borderColor": AppColors.levelButtonBorderRegular,
      "fontColor": AppColors.levelButtonTextRegular
    },
    "Difícil": {
      "color": AppColors.levelButtonHard,
      "borderColor": AppColors.levelButtonBorderHard,
      "fontColor": AppColors.levelButtonTextHard
    },
    "Perito": {
      "color": AppColors.levelButtonHardest,
      "borderColor": AppColors.levelButtonBorderHardest,
      "fontColor": AppColors.levelButtonTextHardest
    }
  };

  Color get bgColor => config[label]!['color']!;
  Color get fontColor => config[label]!['fontColor']!;
  Color get borderColor => config[label]!['borderColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: bgColor,
            border: Border.fromBorderSide(BorderSide(color: borderColor)),
            borderRadius: BorderRadius.circular(28)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
          child: Text(label,
              style: GoogleFonts.notoSans(color: fontColor, fontSize: 13)),
        ));
  }
}
