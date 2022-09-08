import 'package:flutter/material.dart';
import 'package:ui_tamrin/main_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'shabnam'),
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
