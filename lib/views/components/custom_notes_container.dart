// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomNotesContainer extends StatelessWidget {
  const CustomNotesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(left: 10, top: 20, bottom: 30),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            subtitle: Text(
              "Write your tips here",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 40,
                )),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              "14July,2002",
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
