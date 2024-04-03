import 'package:flutter/material.dart';

class layOut extends StatelessWidget {
  const layOut(
      {super.key, required this.mobileLayout, required this.webLayout});
  final Widget mobileLayout;
  final Widget webLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 700) {
          return webLayout;
        } else {
          return mobileLayout;
        }
      },
    );
  }
}
