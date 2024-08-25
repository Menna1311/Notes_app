import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_add_button.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextfield(
              hint: 'Title',
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextfield(
              hint: 'Content',
              contentPadding: const EdgeInsets.symmetric(
                vertical: (60),
                horizontal: (16),
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            const Custom_add_button(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
