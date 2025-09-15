// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: DrawerHeader(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 25.0),
                child: ListTile(
                  leading: SafeArea(
                      child: Container(child: const Icon(Icons.settings))),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/settingpage");
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
