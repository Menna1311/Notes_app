import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppbar(
              text: 'Edit Note',
              iconData: Icons.done,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextfield(hint: 'Title'),
            SizedBox(
              height: 20,
            ),
            CustomTextfield(
                hint: 'Content',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 60, horizontal: 16)),
          ],
        ),
      ),
    );
  }
}
