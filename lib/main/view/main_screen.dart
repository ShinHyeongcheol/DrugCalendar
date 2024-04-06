import 'package:drugcalendar/common/const/colors.dart';
import 'package:drugcalendar/record/view/record_main_screen.dart';
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
        leading: IconButton(
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()),);
          },
          icon: const Icon(
            Icons.account_circle,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RecordScreen()),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      backgroundColor: PRIMATY_COLOR,
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
