import 'package:flutter/material.dart';

import '../materials/color.dart';

class HomeButton extends StatelessWidget {
  Function()? onTap;
  String text;
  HomeButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 180,
          width: 180,
          child: Card(
            color: theme_light_brown,
            child: Text(
              text,
            ),
          ),
        ),
      ),
    );
  }
}
