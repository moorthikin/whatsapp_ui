import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/message.dart';
import 'package:whatsapp_ui/util/colors.dart';

class ChatScreenBox extends StatelessWidget {
  const ChatScreenBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: MediaQuery.of(context).size.height * 0.90,
      width: MediaQuery.of(context).size.width * 0.75,
      //   decoration: BoxDecoration(
      //       image: DecorationImage(image: AssetImage("asset/moorthi.jpg"))),
      child: MessageChat(),
    );
  }
}
