import 'package:flutter/material.dart';
import 'package:learingapp/Components/Item.dart';
import 'package:learingapp/models/numbers.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<Number> numbers = const [
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Kuro',
      enName: 'black',
    ),
    Number(
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'brown',
    ),
    Number(
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'kusunda',
      enName: 'dusty yellow',
    ),
    Number(
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'haiiro',
      enName: 'gray',
    ),
    Number(
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'red',
    ),
    Number(
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'white',
    ),
    Number(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'yellow',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: const Color(0xff473027),
        title: const Text("Colors"),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num) => Item(number: numbers[num]),
      ),
    );
  }
}
