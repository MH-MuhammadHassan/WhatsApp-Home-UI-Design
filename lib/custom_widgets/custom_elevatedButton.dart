import 'package:flutter/material.dart';

class CustomElevatedbutton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget? child;
  const CustomElevatedbutton(
      {super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff23282C),
        foregroundColor: Color(0xff8D9598),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), // Adjust padding
        minimumSize: Size(0, 0),
      ),
      child: child,
    );
  }
}
