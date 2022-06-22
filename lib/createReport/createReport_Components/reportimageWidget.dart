import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:math';

enum ImageSourceType { gallery, camera }

class ReportImageWidget extends StatefulWidget {
  @override
  State<ReportImageWidget> createState() => _ReportImageWidgetState();
}

class _ReportImageWidgetState extends State<ReportImageWidget> {
  File? image;
  var imagePicker;
  var type;
  List<XFile> imageFileList = [];
  Future pickImages(type) async {
    try {
      var source = type;
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<void> dailogBox() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(content: Text('Choose'), actions: <Widget>[
            IconButton(
                icon: Icon(Icons.photo_camera),
                onPressed: () {
                  // pickImage(type = ImageSource.camera);
                }),
            IconButton(
                icon: Icon(Icons.image),
                onPressed: () {
                  //  pickImage(type = ImageSource.gallery);
                }),
          ]);
        });
  }

  void selectImages() async {
    final List<XFile>? selectedImages = await ImagePicker().pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList.addAll(selectedImages);
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      GridView.builder
      (
       physics:ClampingScrollPhysics(),   shrinkWrap: true,
          itemCount: imageFileList.length + 1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 6),
          itemBuilder: (BuildContext context, int index) {
            return Container(
                width: 78,
                height: 78,
                margin: EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  color: Color(0x0D161616),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: index==imageFileList.length

                    ? IconButton(
                        onPressed: () {
                          //  pickImage();
                          // dailogBox();
                          selectImages();
                        },
                        icon: SvgPicture.asset('assets/addicon.svg'),
                      )
                    : Image.file(File(imageFileList[index].path),
                        fit: BoxFit.cover));

            /*		  Image.file(
            File(imageFileList[index].path),
            fit: BoxFit.cover,
          );*/

            /* ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child:
                Image.file(File(imageFileList![index].path), fit: BoxFit.cover),*/

            //Image.file(image!,
            //width: 78.0, height: 78.0, fit: BoxFit.cover)
          }),
      /*  Container(
          width: 78,
          height: 78,
          margin: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            color: Color(0x0D161616),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                //  pickImage();
                // dailogBox();
                selectImages();
              },
              icon: SvgPicture.asset('assets/addicon.svg'),
            ),
          )),*/
    ]);
  }
}
