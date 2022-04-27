import "package:flutter/material.dart";

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {required this.child,
      this.borderRadius: 12.0,
      required this.color,
      this.height = 50.0,
      this.width=180,
      required this.onPressed});
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final double width;
  final VoidCallback onPressed;

  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          child: child,
          // ignore: prefer_const_constructors
          style:
          ButtonStyle(
            
            backgroundColor: MaterialStateProperty.all<Color>(color),
              elevation: MaterialStateProperty.all<double>(10),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius)))),
          onPressed: onPressed,
        ));
  }
}
