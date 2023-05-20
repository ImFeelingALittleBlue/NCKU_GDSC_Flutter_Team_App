import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(
                'Account',
                style: TextStyle(fontSize: 25),
              ),
            ),
            //Account
            Card(
              child: Column(children: [
                GestureDetector(
                  onTap: () => {},
                  child: ListTile(
                    title: Text(
                      'Profile',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                GestureDetector(
                  onTap: () => {},
                  child: ListTile(
                    title: Text(
                      'Forgot Password',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ]),
            ),
            //About
            ListTile(
              leading: const Icon(Icons.info),
              title: Text(
                'About Us',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Card(
              child: Column(children: [
                GestureDetector(
                  onTap: () => {},
                  child: ListTile(
                    title: Text(
                      'Check Update',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
