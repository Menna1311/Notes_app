import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_add_button.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: note_input_form(),
      ),
    );
  }
}

class note_input_form extends StatefulWidget {
  const note_input_form({
    super.key,
  });

  @override
  State<note_input_form> createState() => _note_input_formState();
}

class _note_input_formState extends State<note_input_form> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextfield(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextfield(
            onSaved: (value) {
              content = value;
            },
            hint: 'Content',
            contentPadding: EdgeInsets.symmetric(
              vertical: (60),
              horizontal: (16),
            ),
          ),
          SizedBox(
            height: 110,
          ),
          CustomAddButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
