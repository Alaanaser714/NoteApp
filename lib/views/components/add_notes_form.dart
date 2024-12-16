import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({super.key});

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  final GlobalKey<FormState> formState = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,
      child: ListView(
        children: [
          CustomTextField(
            onSaved: (data) {
              title = data;
            },
            hintText: 'title',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (data) {
              subtitle = data;
            },
            hintText: 'content',
            maxLines: 6,
          ),
          const SizedBox(
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
    );
  }
}