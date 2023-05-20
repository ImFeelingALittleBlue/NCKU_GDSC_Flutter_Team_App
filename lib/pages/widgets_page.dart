import 'package:flutter/material.dart';

//使用一個listview 條列式顯示所有Widget的教學，點擊特定widget可以navigate到對應的widget教學頁面
class WidgetsPage extends StatefulWidget {
  const WidgetsPage({super.key});

  @override
  State<WidgetsPage> createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets')),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            //實作讀取material/text.dart中的widgets list之每個String，使用Navigator push到不同widget教學
            ),
      )),
    );
  }
}
