import 'package:flutter/material.dart';

import '../const/colors.dart';

class DefaultLeadingLayout extends StatelessWidget {
  final Widget child;
  final Widget appbarTitle;
  final Color appbarColor;
  final Widget leadingWidget;

  const DefaultLeadingLayout({
    required this.child,
    this.appbarTitle = const Text(''),
    this.appbarColor = NULL_COLOR,
    this.leadingWidget = const SizedBox.shrink(),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appbarTitle,
        backgroundColor: appbarColor,
        centerTitle: true,
        leading: leadingWidget,
      ),
      body: child,
    );
  }
}
