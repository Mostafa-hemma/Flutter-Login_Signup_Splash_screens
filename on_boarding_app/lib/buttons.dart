import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final double width;
  final Color background;
  final double raduis;
  final String text;
  IconData? icon;
  final Color textcolor;
  final Function() navigate;
  bool? isicon;
  button(
      {Key? key,
      required this.width,
      required this.background,
      required this.raduis,
      this.icon,
      this.isicon = false,
      required this.text,
      required this.textcolor,
      required this.navigate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          onPressed: () {
            navigate();
          },
          style: ElevatedButton.styleFrom(
            primary: background,
            // padding: EdgeInsets.symmetric(horizontal: 20),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(raduis),
            ),
          ),
          child: isicon == false
              ? Text(
                  text,
                  style: TextStyle(color: textcolor),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      text,
                      style: TextStyle(color: textcolor),
                    )
                  ],
                )),
    );
  }
}
