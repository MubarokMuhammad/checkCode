// import 'dart:html';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toritora/exports.dart';

class UploadedImageView extends StatefulWidget {
  UploadedImageView(
      {super.key,
      required this.index,
      required this.selectImageGenre1,
      required this.image});
  final int index;
  final Function selectImageGenre1;
  String? image;
  @override
  State<UploadedImageView> createState() => _UploadedImageViewState();
}

class _UploadedImageViewState extends State<UploadedImageView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        // left: 8,
        top: 11,
        // right: 8,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.selectImageGenre1(widget.index);
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.24,
                height: MediaQuery.of(context).size.width * 0.24,
                padding: widget.image == null
                    ? getPadding(
                        left: 30,
                        top: 31,
                        right: 30,
                        bottom: 31,
                      )
                    : const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: KColor.blueGray10001,
                    width: getHorizontalSize(1),
                  ),
                  borderRadius: BorderRadius.circular(getHorizontalSize(4)),
                  // image: selectedImageGenre1 != null
                  //     ? DecorationImage(
                  //         image: FileImage(File(selectedImageGenre1!)),// may be not working.....
                  //         fit: BoxFit.cover,
                  //       )
                  //     : null,
                ),
                child: widget.image == null
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "+",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: widget.image == null
                                  ? AppStyle.txtPoppinsRegular1531
                                  : AppStyle.txtPoppinsRegular1531Black,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: getPadding(top: 2, bottom: 4),
                              child: Text(
                                "Add Image",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: widget.image == null
                                    ? AppStyle.txtPoppinsRegular8
                                    : AppStyle.txtPoppinsRegular8Black,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Image.file(File(widget.image!), fit: BoxFit.fill),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CustomButton(
              height: getVerticalSize(25),
              width: getHorizontalSize(105),
              text: "Select Genre",
              margin: getMargin(top: 6),
              variant: ButtonVariant.OutlineOrange400,
              shape: ButtonShape.RoundedBorder3,
              padding: ButtonPadding.PaddingAll5,
              fontStyle: ButtonFontStyle.PoppinsMedium10,
            ),
          ),
        ],
      ),
    );
  }
}
