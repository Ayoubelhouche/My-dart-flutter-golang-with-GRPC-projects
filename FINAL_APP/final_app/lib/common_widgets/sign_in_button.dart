import 'package:flutter/material.dart';
import 'package:final_app/common_widgets/custom_elevated_button.dart';

class SignInButton extends CustomElevatedButton{
  SignInButton({
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) : super(
    child: Text(text,
    style: TextStyle(color: textColor,fontSize: 28.0),) ,
    color: color,
    borderRadius:8.0,
    height: 50.0 ,
    onPressed: onPressed,
  );
}