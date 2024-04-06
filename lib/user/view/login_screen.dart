import 'package:drugcalendar/common/component/custom_text_button_push.dart';
import 'package:drugcalendar/common/component/custom_text_form_filed.dart';
import 'package:drugcalendar/common/const/colors.dart';
import 'package:drugcalendar/common/layout/default_layout.dart';
import 'package:drugcalendar/main/view/main_screen.dart';
import 'package:drugcalendar/user/view/signup_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appbarTitle: const Text(
        '로그인',
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
                hintText: 'Email',
                formWidth: MediaQuery.of(context).size.width * 0.85,
                onChanged: (String value) {},
              ),
              CustomTextFormField(
                hintText: 'Password',
                formWidth: MediaQuery.of(context).size.width * 0.85,
                onChanged: (String value) {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SignupButton(),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                ],
              ),
              Container(
                height: 100,
              ),
              CustomTextButtonPush(
                buttonText: 'Log In',
                buttonHeight: 50,
                buttonWidth: MediaQuery.of(context).size.width * 0.85,
                buttonBorder: 90,
                navigate: const MainScreen(),
                buttonNavigateRemove : true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SignupScreen()),
        );
      },
      child: const Text(
        '회원가입',
        style: TextStyle(
          fontSize: 15,
          color: PRIMATY_COLOR,
        ),
      ),
    );
  }
}
