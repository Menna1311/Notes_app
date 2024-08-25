import 'package:flutter/material.dart';

class Custom_search_Icon extends StatelessWidget {
  const Custom_search_Icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(Icons.search),
    );
  }
}
