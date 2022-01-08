import 'package:first_task_facebook_ui/screens/bottom_bar.dart';
import 'package:first_task_facebook_ui/screens/dark_mode.dart';
import 'package:flutter/services.dart';

import './screens/main_screen.dart';
import './screens/secondary_screen.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/x': (context) => SecondaryScreen(),
      },
    );
  }
}
