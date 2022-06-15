import 'package:flutter/material.dart';
import 'package:lendhope/createReport/createReport_Components/reportWidget.dart';
import 'package:lendhope/createReport/createReport_Components/descriptionWidget.dart';
import 'package:lendhope/createReport/createReport_Components/reportimageWidget.dart';

class CreateReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        elevation: 0,
        centerTitle: true,
        title: const Text('Create Report',
            style: TextStyle(
                letterSpacing: -1,
                color: Color(0xFF161616),
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.keyboard_backspace),
          onPressed: () {},
        ),
      ),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        ListView(
            padding: EdgeInsets.only(bottom: 120),
            physics: ClampingScrollPhysics(),
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(height: 41),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'Report Title',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                ReportWidget(),
                SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'Description',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                DescriptionWidget(),
                const Padding(
                  padding: EdgeInsets.only(left: 16, top: 40, bottom: 5),
                  child: Text(
                    'Report Images',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                ReportImageWidget(),
              ]),
            ]),
        Container(
          height: 84,
          color: Colors.white,
        ),
        Positioned(
            bottom: 20,
            child: Container(
              width: 355,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF23DF6B),
              ),
              child: const Center(
                child: Text(
                  'Create Report',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: -1,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
      ]),
    );
  }
}
