import 'package:flutter/material.dart';

class TextPlaceHolder extends StatefulWidget {
  final String? imageText;
  const TextPlaceHolder({super.key, this.imageText});

  @override
  State<TextPlaceHolder> createState() => _TextPlaceHolderState();
}

final List<String> imageText = [
  'Cool And Latest Trends',
  'The Best Accessories',
  'Male And Female Jeans',
  'Lovely Shades',
];

class _TextPlaceHolderState extends State<TextPlaceHolder> {
   @override
  Widget build(BuildContext context) {
    return Text(
      widget.imageText!,
    );
  }
}