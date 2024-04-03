// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Responsive/layout.dart';
import 'package:whatsapp_ui/screens/mobile.dart';
import 'package:whatsapp_ui/screens/web.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: layOut(mobileLayout: MobileLayout(), webLayout: WebLayout()));
  }
}
