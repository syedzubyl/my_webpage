import 'package:flutter/material.dart';

class second_page extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onchangeTheme;
   second_page({super.key, required this.isDarkMode, required this.onchangeTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Second Data"),
      ),
      actions: [
        IconButton(onPressed: onchangeTheme, icon: Icon(
          isDarkMode? Icons.wb_sunny : Icons.nights_stay
        ))
      ],),
    );
  }
}
