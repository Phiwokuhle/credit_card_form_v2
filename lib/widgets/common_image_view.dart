// ignore_for_file: must_be_immutable

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonImageView extends StatelessWidget {
  String? imagePath;
  String? svgPath;
  String? dynamicPath;
  File? file;
  double? height;
  double? width;
  Color? color;
  final BoxFit fit;
  final String placeHolder;

  CommonImageView({
    this.dynamicPath,
    this.imagePath,
    this.svgPath,
    this.file,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.fill,
    this.placeHolder = 'assets/images/image_not_found.png',
  });

  @override
  Widget build(BuildContext context) {
    return _buildImageView();
  }

  Widget _buildImageView() {
    if (dynamicPath != null) {
      dynamicPath!.toLowerCase().endsWith(".svg")
          ? svgPath = dynamicPath
          : imagePath = dynamicPath;
    }
    if (svgPath != null && svgPath!.isNotEmpty) {
      return Container(
        height: height,
        width: width,
        child: SvgPicture.asset(
          svgPath!,
          height: height,
          width: width,
          fit: fit,
          color: color,
        ),
      );
    } else if (file != null && file!.path.isNotEmpty) {
      return Image.file(
        file!,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else if (imagePath != null && imagePath!.isNotEmpty) {
      return Image.asset(
        imagePath!,
        height: height,
        width: width,
        fit: fit,
      );
    }
    return SizedBox();
  }
}
