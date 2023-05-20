import 'package:flutter/material.dart';

import '../../materials/color.dart';

//此檔案包含三個class，能生成三種不同的字體

//1. TitleText: for big text
class TitleText extends StatelessWidget {
  String text;
  TitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 50, color: theme_dark_brown, fontWeight: FontWeight.bold),
      ),
    );
  }
}

//2. SubTitleText: for sub-title text
class SubTitleText extends StatelessWidget {
  String text;
  SubTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 30,
            color: theme_light_brown,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

//3. SubTitleText: for sub-title text
class MainText extends StatelessWidget {
  String text;
  MainText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: theme_dark_brown),
      ),
    );
  }
}
