// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:note_app/widgets/colors_item.dart';

class ColorsListview extends StatefulWidget {
  const ColorsListview({
    super.key,
  });

  @override
  State<ColorsListview> createState() => _ColorsListviewState();
}

class _ColorsListviewState extends State<ColorsListview> {
  List<Color> colorsList = [
    Color(0xFFFF0000),
    Color(0xFF00FF00),
    Color.fromARGB(255, 82, 82, 106),
    Color(0xFFFFFF88),
    Color.fromARGB(255, 230, 230, 23),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ColorsItem(
                isSelected: currentIndex == index,
                color: colorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
