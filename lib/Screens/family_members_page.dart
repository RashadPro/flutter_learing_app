import 'package:flutter/material.dart';
import 'package:learingapp/Components/Item.dart';
import 'package:learingapp/models/numbers.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final List<Number> numbers = const [
    Number(
      sound: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichi',
      enName: 'Father',
    ),
    Number(
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Haha',
      enName: 'Mother',
    ),
    Number(
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
    ),
    Number(
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
    ),
    Number(
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'ho',
      enName: 'Grand father',
    ),
    Number(
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Obaasan',
      enName: 'Grand mother',
    ),
    Number(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Oniisan',
      enName: 'Older Brother',
    ),
    Number(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Oneesan',
      enName: 'Older Sister',
    ),
    Number(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōtosan',
      enName: 'Younger Brother',
    ),
    Number(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōtosan',
      enName: 'Younger Sister',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: const Color(0xff473027),
        title: const Text("Family members"),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num) => Item(number: numbers[num]),
      ),
    );
  }
}
