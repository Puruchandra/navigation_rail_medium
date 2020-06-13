import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabThree extends StatelessWidget {
  const TabThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Hello from Tab 3",
        style: TextStyle(
            fontSize: 30.0, fontWeight: FontWeight.w900, color: Colors.blue),
      ),
    );
  }
}
