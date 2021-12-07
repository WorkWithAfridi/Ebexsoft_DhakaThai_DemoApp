import 'package:flutter/material.dart';

class MenuItem{
  final String text;
  final IconData icon;

  const MenuItem({ required this.text, required this.icon});
}

class MenuItems{
  static const List<MenuItem> firstMenuList=[
    settings,
    updateApp,
    fileAComplaint,
  ];
  static List<MenuItem> secondMenuList=[
    logOut,
  ];
  static const MenuItem settings= MenuItem(text: 'Settings', icon: Icons.settings);
  static const MenuItem updateApp=MenuItem(text: 'Update app', icon: Icons.system_update_alt);
  static const MenuItem fileAComplaint=MenuItem(text: 'File a Complaint', icon: Icons.drive_file_rename_outline_outlined);
  static const MenuItem logOut=MenuItem(text: 'Log out', icon: Icons.logout);
}