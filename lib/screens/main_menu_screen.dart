

import 'package:flappy_bird/game/assets.dart';
import 'package:flappy_bird/game/flappy_bird.dart';
import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key, required this.game});

  static const String id = "mainMenu";

  final FlappyBird game;

  @override
  Widget build(BuildContext context) {
    game.pauseEngine();
    return  Scaffold(
      body: GestureDetector(
        onTap: (){
          game.overlays.remove("mainMenu");
          game.resumeEngine();
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.menu,),
              fit: BoxFit.cover
            )
          ),
          child: Image.asset(Assets.message),
        ),
      ),
    );
  }
}