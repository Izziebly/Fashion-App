
import 'package:flutter/material.dart';

class ImagePlaceHolder extends StatefulWidget {
  final String? imagePath;
  const ImagePlaceHolder({super.key, this.imagePath});

  @override
  State<ImagePlaceHolder> createState() => _ImagePlaceHolderState();
   
}

final List<String> imagePath = [
  'assets/images/cools.webp',
  'assets/images/access.webp',
  'assets/images/jeans.webp',
  'assets/images/shades.webp',
];

class _ImagePlaceHolderState extends State<ImagePlaceHolder> {

   @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imagePath!,
      fit: BoxFit.cover,
    );
  }
}