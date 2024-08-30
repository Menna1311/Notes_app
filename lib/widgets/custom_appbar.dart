import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_search_Icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.text,
    required this.iconData,
    this.onPressed,
  });
  final String text;
  final IconData iconData;
  final Function()? onPressed;
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
          onPressed: onPressed,
        )
      ],
    );
  }
}
