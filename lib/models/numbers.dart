import 'package:audioplayers/audioplayers.dart';

class Number {
  final String sound;
  final String image;
  final String jpName;
  final String enName;

  //Constructor
  const Number({
    required this.image,
    required this.jpName,
    required this.enName,
    required this.sound,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
