import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key, required this.hint, this.contentPadding, this.onSaved});
  final String hint;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required ';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: Colors.blueAccent,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.blueAccent),
        ),
      ),
    );
  }
}
