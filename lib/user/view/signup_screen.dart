import 'package:drugcalendar/common/component/custom_text_button_pop.dart';
import 'package:drugcalendar/common/component/custom_text_form_filed.dart';
import 'package:drugcalendar/common/layout/default_layout.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appbarTitle: const Text(
        '회원가입',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30,
              ),
              Container(
                height: 30,
              ),
              CustomTextFormField(
                hintText: 'Name',
                formWidth: MediaQuery.of(context).size.width * 0.85,
                onChanged: (String value) {},
              ),
              CustomTextFormField(
                hintText: 'Email',
                formWidth: MediaQuery.of(context).size.width * 0.85,
                onChanged: (String value) {},
              ),
              CustomTextFormField(
                hintText: 'Password',
                formWidth: MediaQuery.of(context).size.width * 0.85,
                onChanged: (String value) {},
              ),
              Container(
                height: 70,
              ),
              CustomTextButtonPop(
                buttonText: 'Sign Up',
                buttonHeight: 50,
                buttonWidth: MediaQuery.of(context).size.width * 0.85,
                buttonBorder: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
