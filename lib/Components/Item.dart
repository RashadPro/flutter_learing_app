import 'package:flutter/material.dart';
import 'package:learingapp/models/numbers.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});

  final Number number;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            //image
            Container(
              width: 80,
              color: const Color(0xffFFF6DC),
              child: Image.asset(number.image),
            ),
            //Space
            const SizedBox(
              width: 15,
            ),
            //Text
            Column(
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            //Space
            const Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: () {
                number.playSound();
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.red,
                size: 30,
              ),
            ),
            //Space
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        const Divider(
          color: Colors.red,
          thickness: 2,
        ),
      ],
    );
  }
}

class PhrashesItem extends StatelessWidget {
  const PhrashesItem({super.key, required this.number});

  final Number number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Row(
            children: [
              //Text
              Column(
                children: [
                  Text(
                    number.jpName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    number.enName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              //Space
              const Spacer(
                flex: 1,
              ),
              IconButton(
                onPressed: () {
                  number.playSound();
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              //Space
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.red,
            thickness: 2,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
