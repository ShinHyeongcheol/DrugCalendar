import 'dart:html';

import 'package:drugcalendar/common/const/colors.dart';
import 'package:drugcalendar/user/view/login_screen.dart';
import 'package:flutter/material.dart';

class CustomTextButtonPush extends StatelessWidget {
  final String buttonText;
  final Widget navigate;
  final double buttonWidth;
  final double buttonHeight;
  final double buttonBorder;
  final bool buttonNavigateRemove;

  const CustomTextButtonPush(
      {this.buttonText = 'test',
      this.navigate = const LoginScreen(),
      this.buttonWidth = 100,
      this.buttonHeight = 40,
      this.buttonBorder = 15,
      this.buttonNavigateRemove = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonBorder),
        ),
        backgroundColor: PRIMATY_COLOR,
        foregroundColor: INPUT_BG_COLOR,
        minimumSize: Size(buttonWidth, buttonHeight),
        //maximumSize: Size(50, 40)
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(buttonText),
      ),
      onPressed: () {
        if (buttonNavigateRemove) {
          Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
        }
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navigate),
        );
      },
    );
  }
}
