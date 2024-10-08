import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_add_button.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class NoteInputForm extends StatefulWidget {
  const NoteInputForm({
    super.key,
  });

  @override
  State<NoteInputForm> createState() => NoteInputFormState();
}

class NoteInputFormState extends State<NoteInputForm> {
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
          const SizedBox(
            height: 20,
          ),
          CustomTextfield(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextfield(
            onSaved: (value) {
              content = value;
            },
            hint: 'Content',
            contentPadding: const EdgeInsets.symmetric(
              vertical: (60),
              horizontal: (16),
            ),
          ),
          const SizedBox(
            height: 110,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomAddButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    // Get the current date
                    DateTime now = DateTime.now();

                    // Format the date as day-month-year
                    String formattedDate =
                        "${now.day}-${now.month}-${now.year}";

                    var note = NoteModel(
                        title: title!,
                        subTitle: content!,
                        date: formattedDate,
                        color: Colors.amber.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                isLoading: state is AddNoteLoading ? true : false,
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
