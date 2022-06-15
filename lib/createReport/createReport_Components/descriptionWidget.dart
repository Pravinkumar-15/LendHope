import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14),
      decoration: BoxDecoration(
          color: Color(0x1A161616), borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(left: 16, top: 5, right: 16),
      child: TextFormField(
        maxLength: 200,
        maxLines: 10,
        decoration: InputDecoration(
          hintText: 'Farming Intiative',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
