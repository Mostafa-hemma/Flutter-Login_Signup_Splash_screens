import 'package:flutter/material.dart';

class text_field extends StatelessWidget {
  final double width;
  final double height;
  final TextInputType textInputType;
  final String hinttext;
  final Color bordercolor;
  final double borderwidth;
  final double borderraduis;
  final String labeltext;
  const text_field(
      {Key? key,
      required this.width,
      required this.height,
      required this.textInputType,
      required this.hinttext,
      required this.bordercolor,
      required this.borderwidth,
      required this.borderraduis,
      required this.labeltext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width),
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: bordercolor, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: bordercolor, width: 2.0),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: height),
            hintText: hinttext,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: bordercolor, width: borderwidth),
                borderRadius: BorderRadius.circular(borderraduis)),
            labelText: labeltext),
      ),
    );
  }
}
