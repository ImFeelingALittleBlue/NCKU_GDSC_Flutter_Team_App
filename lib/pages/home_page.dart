import 'package:flutter/material.dart';
import 'package:gdsc_flutter_group/pages/home_drawer_page.dart';

import '../materials/text.dart';
import '../materials/color.dart';

import '../widgets/HomeButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text(APP_NAME)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //Image
            Image.asset(
              'assets/images/app_icon.png',
              fit: BoxFit.cover,
            ),
          ]),
        ),
      ),
      drawer: HomeDrawerPage(scaffoldKey: _scaffoldKey),
    );
  }
}
