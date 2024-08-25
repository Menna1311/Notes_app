import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class note_list_view extends StatelessWidget {
  const note_list_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: const Note_Item(),
            );
          }),
    );
  }
}
