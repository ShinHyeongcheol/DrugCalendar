import 'package:drugcalendar/common/component/custom_text_button_push.dart';
import 'package:drugcalendar/common/component/custom_text_form_filed.dart';
import 'package:drugcalendar/common/layout/default_layout.dart';
import 'package:drugcalendar/record/view/record_seach.dart';
import 'package:flutter/material.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({super.key});

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appbarTitle: const Text(
        '복용약 기록',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.075, bottom: 15),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    '처방전의 이름은 뭔가요?',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                CustomTextFormField(
                  onChanged: (value) {},
                  hintText: '처방전 이름을 입력해주세요',
                  formWidth: MediaQuery.of(context).size.width * 0.85,
                ),
                Container(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    '언제부터 언제까지 드시나요?',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                CustomTextFormField(
                  onChanged: (value) {},
                  hintText: '날짜 입력',
                  formWidth: MediaQuery.of(context).size.width * 0.85,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.6,
                ),
                CustomTextButtonPush(
                  buttonText: '다음',
                  buttonWidth: MediaQuery.of(context).size.width * 0.85,
                  navigate: RecordSearch(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
