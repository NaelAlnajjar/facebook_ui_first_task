import 'package:flutter/material.dart';

class StatefulTest extends StatefulWidget {
  const StatefulTest({Key key}) : super(key: key);

  @override
  _StatefulTestState createState() => _StatefulTestState();
}

class _StatefulTestState extends State<StatefulTest> {
  bool isDarkMode = true;
  bool switchVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        color: this.isDarkMode ? Colors.white : Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Light Mode',
              style: TextStyle(
                  color: this.isDarkMode ? Colors.black : Colors.white),
            ),
            Switch(
                activeColor: isDarkMode ? Colors.grey : Colors.white,
                activeTrackColor: isDarkMode ? Colors.white : Colors.grey,
                inactiveThumbColor: isDarkMode ? Colors.black : Colors.white,
                inactiveTrackColor: isDarkMode ? Colors.grey : Colors.black,
                value: switchVal,
                onChanged: (val) {
                  setState(() {
                    this.isDarkMode = !this.isDarkMode;
                    switchVal = val;
                  });
                }),
            Text(
              'Dark Mode',
              style: TextStyle(
                  color: this.isDarkMode ? Colors.black : Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
