import 'package:flutter/material.dart';
import 'package:lendhope/createReport/createReport_Screen.dart';
void main() {
  runApp(LendHope());
}

class LendHope extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
		    debugShowCheckedModeBanner:false,
      home: CreateReport(),
    );
  }
}
