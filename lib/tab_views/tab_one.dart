import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabOne extends StatelessWidget {
  const TabOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Hello from Tab 1",
        style: TextStyle(
            fontSize: 30.0, fontWeight: FontWeight.w900, color: Colors.indigo),
      ),
    );
  }
}
