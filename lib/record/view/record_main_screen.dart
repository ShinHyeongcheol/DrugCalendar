import 'package:drugcalendar/common/layout/default_layout.dart';
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
      appbarTitle:const Text(
      '복용약 기록',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    ),
      child: SafeArea(
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}
