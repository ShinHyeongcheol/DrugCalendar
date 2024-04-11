import 'package:drugcalendar/common/const/colors.dart';
import 'package:drugcalendar/main/view/main_calendar.dart';
import 'package:drugcalendar/main/view/main_dialog.dart';
import 'package:drugcalendar/main/view/main_drug_list.dart';
import 'package:drugcalendar/profile/view/profile_main_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '3월',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ProfileScreen()),
            );
          },
          icon: const Icon(
            Icons.account_circle,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) {
                  return const MainDialog();
                },
              ).then((value) {
                //pop시에 return
              }).whenComplete(() {
                // 다이얼로그 종료시 호출
              });
            },
            icon: const Icon(Icons.add),
          ),
        ],
        backgroundColor: PRIMATY_COLOR,
      ),
      body: const Column(
        children: [
          MainCalendar(),
          MainDrugList(),
        ],
      ),
    );
  }
}
