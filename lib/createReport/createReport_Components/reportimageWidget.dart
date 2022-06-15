import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ReportImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 78,
        height: 78,
        margin: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          color: Color(0x0D161616),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/addicon.svg'),
          ),
        ));
  }
}
