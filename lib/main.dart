import 'package:flutter/material.dart';
import 'package:new_webpage/homepage.dart';
//import 'package:own_website/homepage.dart';

void main(){
  runApp(const Myapp());
}
//zubyl new lines add checking in the githuhs in vscode
class Myapp extends StatefulWidget {
  const Myapp({super.key});
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool _isDarkmode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DATAMAKER",
      theme: _isDarkmode ? ThemeData.dark() : ThemeData.light(),
      home: Homepage(
        isDarkMode:_isDarkmode,
        onThemeChange :_toggle,
      ),
    );
  }
  void _toggle(){
    setState(() {
      _isDarkmode = !_isDarkmode;
    });
  }
}
