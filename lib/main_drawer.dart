import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app_advanced/material_color.dart';

class forthProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      const UserAccountsDrawerHeader(
        accountName: Text(
          "NADER",
          style: TextStyle(fontSize: 18),
        ),
        accountEmail: Text("NaderAlGhussin@gmail.com"),
        decoration: BoxDecoration(color: primary),
        currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.pink,
            child: Text(
              "N",
              style: TextStyle(fontSize: 30),
            )),
      ),
      ListTile(
        leading: const Icon(Icons.edit),
        onTap: () => Navigator.of(context).pushNamed("/createquiz"),
        title: const Text(
          "Create Quiz",
          style: TextStyle(fontSize: 20),
        ),
      ),
      ListTile(
        onTap: () => Navigator.of(context).pushNamed("/questions"),
        leading: const Icon(Icons.quiz),
        title: const Text(
          "Start Quiz",
          style: TextStyle(fontSize: 20),
        ),
      ),
      const Divider(
        color: Colors.black,
      ),
      ListTile(
        onTap: () {
          SystemNavigator.pop();
        },
        leading: Icon(Icons.exit_to_app),
        title: Text(
          "Exit",
          style: TextStyle(fontSize: 20),
        ),
      ),
    ]));
  }
}
