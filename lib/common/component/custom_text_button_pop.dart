import 'package:drugcalendar/common/const/colors.dart';
import 'package:flutter/material.dart';

class CustomTextButtonPop extends StatelessWidget {

  final String buttonText;
  //final Widget navigate;
  final double buttonWidth;
  final double buttonHeight;
  final double buttonBorder;

  const CustomTextButtonPop({
    this.buttonText = 'test',
    //this.navigate = , push
    this.buttonWidth = 100,
    this.buttonHeight = 40,
    this.buttonBorder = 15,
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
        Navigator.pop(context);
        //Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage()),); push
        // Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false); 모든 페이지 삭제
      },
    );
  }
}
