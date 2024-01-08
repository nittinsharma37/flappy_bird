import 'package:flame/game.dart';
import 'package:flappy_bird/screens/game_over_screen.dart';
import 'package:flappy_bird/screens/main_menu_screen.dart';
import 'package:flutter/material.dart';

import 'game/flappy_bird.dart';

void main() {
  print(" here is the main method of the app ");
  final game = FlappyBird();
  runApp(GameWidget(
    initialActiveOverlays: const [MainMenuScreen.id],
    game: game,
    overlayBuilderMap: {
      'mainMenu': (BuildContext context, FlappyBird _) =>
          MainMenuScreen(game: game),
      'gameOver': (BuildContext context, FlappyBird _) =>
          GameOverScreen(game: game),
    },
  ));
}
