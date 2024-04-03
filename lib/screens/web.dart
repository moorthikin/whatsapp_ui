// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_const

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/Appbarbox.dart';
import 'package:whatsapp_ui/screens/chatscreen.dart';
import 'package:whatsapp_ui/screens/custom_appbar.dart';
import 'package:whatsapp_ui/screens/custom_chatAppbar.dart';
import 'package:whatsapp_ui/util/colors.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({super.key});

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        SingleChildScrollView(
          child: Column(
            children: const [
              CustomChatAppbar(heightsize: 0.12, widthsize: 0.25),
              CustomAppbar(
                heightsize: 0.99,
                widthsize: 0.25,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Appbarbox(heightsize: 0.12, widthsize: 0.75),
            Expanded(child: ChatScreenBox()),
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.75,
              color: mobileChatBoxColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                    color: textColor,
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
