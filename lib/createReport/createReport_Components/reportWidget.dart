import 'package:flutter/material.dart';
class ReportWidget extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return Container(
                  padding: EdgeInsets.only(left: 14),
                  decoration: BoxDecoration(
                      color: Color(0x1A161616),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.only(left: 16, top: 5, right: 16),
                  child: TextFormField(
                    maxLines: 1,
                    maxLength: 15,
                    decoration: InputDecoration(
                      hintText: 'Farming Intiative',
                      counterText: '',
                      border: InputBorder.none,
                    ),
                  ),
                );
	}}
