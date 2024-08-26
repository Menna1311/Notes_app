import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_search_Icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.text,
    required this.iconData,
  });
  final String text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
        ),
        const Spacer(),
        CustomSearchIcon(
          iconData: iconData,
        )
      ],
    );
  }
}
