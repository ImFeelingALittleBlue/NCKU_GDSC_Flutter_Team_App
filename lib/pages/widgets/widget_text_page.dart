import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/for_pages/MyText.dart';

import '../../services/url_service.dart';

class WidgetTextPage extends StatefulWidget {
  const WidgetTextPage({super.key});

  @override
  State<WidgetTextPage> createState() => _WidgetTextPageState();
}

class _WidgetTextPageState extends State<WidgetTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget: Text')),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //Title: the name of widget (**自行修改)
            //旁邊的按鈕要能打開官方網站的對應widget文本教學(**自行修改網址)
            Row(
              children: [
                TitleText(text: 'Text'),
                IconButton(
                  onPressed: () async => UrlService.launchWebsite(
                      'https', 'docs.flutter.dev', 'ui/widgets/text'),
                  icon: const Icon(Icons.info),
                  iconSize: 30,
                ),
              ],
            ),

            //1. 簡單介紹&使用時機
            SubTitleText(text: '1. 介紹及使用時機'),
            //內文(**自行修改)
            MainText(text: 'Text Widget用於顯示出一段文字，可使用Textstyle作為參數更改文字樣式'),

            SizedBox(height: 15),

            //2. 常見參數及展示(**自行修改-可直接使用widget或圖片輔助)
            SubTitleText(text: '2. 常見參數及展示'),
            MainText(text: 'Text Widget用於顯示出一段文字，可使用Textstyle作為參數更改文字樣式'),
            SizedBox(height: 10),
            MainText(text: '-- String data: 想要顯示的文字'),
            MainText(text: '-- TextStyle? data: 修改文字樣式'),
          ],
        ),
      )),
    );
  }
}
