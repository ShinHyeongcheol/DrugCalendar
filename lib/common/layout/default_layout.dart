import 'package:drugcalendar/common/const/colors.dart';
import 'package:flutter/material.dart';


class DefaultLayout extends StatelessWidget {
  final Widget child;
  final Widget appbarTitle;
  final Color appbarColor;
  final bool autoLeading;

  const DefaultLayout({
    required this.child,
    this.appbarTitle = const Text(''),
    this.appbarColor = NULL_COLOR,
    this.autoLeading = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appbarTitle,
        backgroundColor: appbarColor,
        centerTitle: true,
        automaticallyImplyLeading: autoLeading,
      ),
      body: child,
    );
  }
}
