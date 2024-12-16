// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class CustomModelBottomSheet extends StatefulWidget {
  const CustomModelBottomSheet({super.key});

  @override
  State<CustomModelBottomSheet> createState() => _CustomModelBottomSheetState();
}

class _CustomModelBottomSheetState extends State<CustomModelBottomSheet> {
  final GlobalKey<FormState> formState = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
      child: Form(
        key: formState,
        child: ListView(
          children: [
            CustomTextField(
              onSaved: (data) {
                title = data;
              },
              hintText: 'title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              onSaved: (data) {
                subtitle = data;
              },
              hintText: 'content',
              maxLines: 6,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              onTap: () {
                if (formState.currentState!.validate()) {
                  formState.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
              title: 'Add',
            )
          ],
        ),
      ),
    );
  }
}
