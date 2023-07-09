import 'package:flutter/material.dart';
import 'package:flutter_devquiz/home/widgets/appbar/appbar_widget.dart';
import 'package:flutter_devquiz/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter_devquiz/home/widgets/quiz_card/quiz_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButtonWidget(label: "Fácil"),
                  LevelButtonWidget(label: "Médio"),
                  LevelButtonWidget(label: "Difícil"),
                  LevelButtonWidget(label: "Perito"),
                ],
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: const [
                      QuizCardWidget(),
                      QuizCardWidget(),
                      QuizCardWidget(),
                      QuizCardWidget(),
                    ]),
              )
            ],
          ),
        ));
  }
}
