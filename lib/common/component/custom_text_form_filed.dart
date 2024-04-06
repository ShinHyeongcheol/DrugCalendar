import 'package:drugcalendar/common/const/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obsureText;
  final bool autofocus;
  final double formHeight;
  final double formWidth;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({
    this.hintText,
    this.errorText,
    this.obsureText = false,
    this.autofocus = false,
    this.formHeight = 80,
    this.formWidth = 400,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
        borderSide: BorderSide(
      color: INPUT_BORDER_COLOR,
      width: 1.0,
    ));

    return Container(
      width: formWidth,
      height: formHeight,
      child: TextFormField(
        cursorColor: PRIMATY_COLOR,
        //비밀번호 입력시
        obscureText: obsureText,
        //화면 들어갈 때 자동으로
        autofocus: autofocus,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          hintText: hintText,
          errorText: errorText,
          hintStyle: const TextStyle(
            color: BODY_TEXT_COLOR,
            fontSize: 14.0,
          ),
          fillColor: INPUT_BG_COLOR,
          //false - 배경색 X, true - 배경색 O
          filled: true,
          //모든 INPUT 상태의 기본 스타일 세팅
          border: baseBorder,
          enabledBorder: baseBorder,
          focusedBorder: baseBorder.copyWith(
            borderSide: baseBorder.borderSide.copyWith(
              color: PRIMATY_COLOR,
            ),
          ),
        ),
      ),
    );
  }
}
