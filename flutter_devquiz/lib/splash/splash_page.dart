import 'package:flutter/material.dart';
import 'package:flutter_devquiz/core/app_gradients.dart';

import '../core/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.linear),
        child: Center(child: Image.asset(AppImages.logo)),
      ),
    );
  }
}
