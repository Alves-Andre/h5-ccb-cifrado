import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Function()? onMenuPressed;

  CustomAppBar({required this.title, this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: onMenuPressed,
      ),
    );
  }
}