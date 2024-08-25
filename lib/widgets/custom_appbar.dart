import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_search_Icon.dart';

class csutom_appbar extends StatelessWidget {
  const csutom_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
        ),
        Spacer(),
        Custom_search_Icon()
      ],
    );
  }
}
