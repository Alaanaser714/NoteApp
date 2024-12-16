import 'package:flutter/material.dart';

import '../../widgets/custom_text_field.dart';

class EditNotesScreen extends StatelessWidget {
  const EditNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Notes",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.25),
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.check,
              ),
            ),
          )
        ],
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomTextField(
            hintText: 'title',
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hintText: 'content',
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}
