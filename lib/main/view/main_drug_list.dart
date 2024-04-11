import 'package:flutter/material.dart';

class MainDrugList extends StatefulWidget {
  const MainDrugList({super.key});

  @override
  State<MainDrugList> createState() => _MainDrugListState();
}

class _MainDrugListState extends State<MainDrugList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return ExpansionTile(
            trailing: SizedBox(),
            title: ListTile(
              title: Text('$index'),
            ),
            children: [
              Text('asd'),
            ],
          );
        },
      ),
    );
  }
}
