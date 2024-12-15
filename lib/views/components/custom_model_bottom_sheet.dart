// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class CustomModelBottomSheet extends StatelessWidget {
  const CustomModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
      child: Column(
        children: [
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
          SizedBox(
            height: 50,
          ),
          CustomButton(
            title: 'Add',
          )
        ],
      ),
    );
  }
}
