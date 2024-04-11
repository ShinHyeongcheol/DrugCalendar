import 'package:drugcalendar/common/component/custom_text_button_push.dart';
import 'package:drugcalendar/evaluation/view/evaluation_main.dart';
import 'package:drugcalendar/record/view/record_main_screen.dart';
import 'package:flutter/material.dart';

class MainDialog extends StatelessWidget {
  const MainDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(
        child: Text('기록하기'),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      //alignment: Alignment.center,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 5,
          ),
          CustomTextButtonPush(
            buttonText: '복용약 기록하기',
            navigate: const RecordScreen(),
            buttonWidth: MediaQuery.of(context).size.width * 0.7,
            buttonHeight: 45,
            buttonBorder: 90,
            buttonNavigatePop: true,
          ),
          Container(
            height: 20,
          ),
          CustomTextButtonPush(
            buttonText: '약물평가 기록하기',
            navigate: const EvaluationMain(),
            buttonWidth: MediaQuery.of(context).size.width * 0.7,
            buttonHeight: 45,
            buttonBorder: 90,
            buttonNavigatePop: true,
          ),
        ],
      ),
    );
  }
}
