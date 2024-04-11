import 'package:drugcalendar/common/component/custom_text_button_push.dart';
import 'package:drugcalendar/common/component/custom_text_form_filed.dart';
import 'package:drugcalendar/common/layout/default_layout.dart';
import 'package:flutter/material.dart';

class RecordSearch extends StatefulWidget {
  const RecordSearch({super.key});

  @override
  State<RecordSearch> createState() => _RecordSearchState();
}

class _RecordSearchState extends State<RecordSearch> {
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appbarTitle: const Text(
        '복용약 검색',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.075, bottom: 15),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                ),
                CustomTextFormField(
                  onChanged: (value) {},
                  hintText: '입력',
                  formWidth: MediaQuery.of(context).size.width * 0.85,
                ),
                CustomTextButtonPush(
                  buttonText: '다음',
                  buttonWidth: MediaQuery.of(context).size.width * 0.85,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
