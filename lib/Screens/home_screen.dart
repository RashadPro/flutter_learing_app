import 'package:flutter/material.dart';
import 'package:learingapp/Components/Category.dart';
import 'package:learingapp/Screens/colors_page.dart';
import 'package:learingapp/Screens/family_members_page.dart';
import 'package:learingapp/Screens/numbers_page.dart';
import 'package:learingapp/Screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4DA),
      appBar: AppBar(
        title: const Text("Toku"),
        backgroundColor: const Color(0xFF4A322B),
      ),
      body: Column(children: [
        //Members
        Category(
            color: Colors.orange,
            text: "Members",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const NumbersPage(),
                ),
              );
            }),
        //Family Members
        Category(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const FamilyPage(),
              ),
            );
          },
          color: Colors.green,
          text: "Family Members",
        ),
        //Colors
        Category(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const ColorsPage(),
              ),
            );
          },
          color: Colors.purple,
          text: "Colors",
        ),
        //Phrases
        Category(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const PhrasesPage(),
              ),
            );
          },
          color: Colors.blue,
          text: "Phrases",
        ),
      ]),
    );
  }
}
