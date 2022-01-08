import 'package:flutter/material.dart';

class BottomNavigationTest extends StatefulWidget {
  const BottomNavigationTest({Key key}) : super(key: key);

  @override
  _BottomNavigationTestState createState() => _BottomNavigationTestState();
}

class _BottomNavigationTestState extends State<BottomNavigationTest> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
        child: activeIndex == 0
            ? Text(
                'Home Screen',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              )
            : Text(
                'Favorite Screen',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        onTap: (val) {
          activeIndex = val;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home Screen'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite Screen'),
        ],
      ),
    );
  }
}
