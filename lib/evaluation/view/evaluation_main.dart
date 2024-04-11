import 'package:drugcalendar/common/layout/default_layout.dart';
import 'package:flutter/material.dart';

class EvaluationMain extends StatefulWidget {
  const EvaluationMain({super.key});

  @override
  State<EvaluationMain> createState() => _EvaluationMainState();
}

class _EvaluationMainState extends State<EvaluationMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appbarTitle: const Text(
        '약물평가 기록',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}
