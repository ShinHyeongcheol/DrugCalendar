import 'package:drugcalendar/common/const/colors.dart';
import 'package:drugcalendar/common/layout/default_layout.dart';
import 'package:flutter/material.dart';

import '../../common/layout/default_leading_layout.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultLeadingLayout(
      appbarTitle: const Text(
        '3월',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      appbarColor: PRIMATY_COLOR,
      child: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
