import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/note_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (16.0),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppbar(
              text: 'Notes',
              iconData: Icons.search,
            ),
            Expanded(child: NoteListView()),
          ],
        ),
      ),
    );
  }
}
