import 'package:flutter/material.dart';
import 'package:flutter_devquiz/core/app_gradients.dart';
import 'package:flutter_devquiz/core/app_text_styles.dart';
import 'package:flutter_devquiz/home/widgets/score_card/score_card_widget.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({super.key})
      : super(
            preferredSize: const Size.fromHeight(250),
            child: SizedBox(
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      height: 161,
                      decoration:
                          const BoxDecoration(gradient: AppGradients.linear),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.maxFinite,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(TextSpan(
                                text: "Olá, ",
                                style: AppTextStyles.title,
                                children: [
                                  TextSpan(
                                      text: "JDaniloC",
                                      style: AppTextStyles.titleBold)
                                ])),
                            Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://avatars.githubusercontent.com/u/49529180?v=4"))),
                            )
                          ]),
                    ),
                    const Align(
                        alignment: Alignment(0.0, 1.0),
                        child: ScoreCardWidget())
                  ],
                )));
}
