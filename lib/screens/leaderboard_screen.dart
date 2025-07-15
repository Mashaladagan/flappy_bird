import 'package:flappy_bird/game.dart';
import 'package:flappy_bird/variables.dart';
import 'package:flutter/material.dart';
import 'package:flappy_bird/assets.dart';

class LeaderboardScreen extends StatelessWidget {
  final FlappyBirdGame game;
  static const String id = 'leaderBoard';

  const LeaderboardScreen({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    game.pauseEngine();
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.menu),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Leaderboard',
                style: const TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontFamily: 'Pixel',
                ),
              ),
              Text(
                'Top 1: ${leaderboard[0]}',
                style: const TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontFamily: 'Pixel',
                ),
              ),
              Text(
                'Top 2: ${leaderboard[1]}',
                style: const TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontFamily: 'Pixel',
                ),
              ),
              Text(
                'Top 3: ${leaderboard[2]}',
                style: const TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontFamily: 'Pixel',
                ),
              ),
              ElevatedButton(
                onPressed: onExit,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text(
                  'Exit',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Pixel',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onExit() {
    game.overlays.remove('leaderBoard');
    game.overlays.add('gameOver');
  }
}
